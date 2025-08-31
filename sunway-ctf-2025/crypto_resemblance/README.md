# Resemblance

| Key            | Value                                                         |
|----------------|---------------------------------------------------------------|
| Challenge Name | Resemblance                                                   |
| Author         | warlocksmurf                                                  |
| Category       | Cryptography                                                  |
| Description    | Sir Cha-Cha never liked reusing stuff anyway                  |
| Challenge Type | Static                                                        |
| Flag           | sunctf25{m4yb3_s0m3_k3y_d1ff3r3nc3_1snt_s0_b4d_4ft3r4LL}      |
| Score          | 230                                                           |

File(s) in `attachments/` are distributed to the participants.

## Solution

<details>
<summary>Click to expand</summary>

The reuse of the key and nonce for encrypting multiple pieces of data is the main vulnerability exploited in this challenge. ChaCha20 generates a keystream based on the key and nonce provided. The encryption is performed by XORing the plaintext with this keystream. If the key and nonce are reused, the same keystream is generated, which can lead to revealing the flag.

1. We can derive the keystream used during encryption by XORing the known plaintext and ciphertext together. (The equation for this step is: `Keystream = Known Plaintext ⊕ Ciphertext`)

2. With the keystream known, decrypting the flag is straightforward. `Encrypted Flag ⊕ Keystream`

```py
enc_msg = bytes.fromhex("e9232aa6aa9a8d830300734ef35217d0faca5f1e02d6bbb506d2801601bafad9b74fd4fdb89839c604c339802799bea8c4286f5fe716a4f08cf0b8141eae3db03eddc43474daa40f677454b595b02f1118483d87f48a14668b16c71d62c43e36f0d9524e2ef6fbeba24a2e41be3402f680bf79a66cdc156e2a4cde22ecf532fa6e63aea04b2a214673dfa7964248fa2d30d65799ad4503966c582c2b054e31f22980d0743b51571d60da8725f278c2e49d6d656f02397496a8f7928850c0c723a2118d168dd7c16a968b7088a3aaaa6c24387575aaf5239808fcfdf163004eaa2c12ac250dfccf35178c")
dec_msg = b"The streets of New Eridu hummed with neon life, untouched by the chaos of the Hollows. Proxies whispered through back alleys, chasing commissions that bordered on myth and madness. One night, a Hollow surged open near Sixth Street..."
enc_flag = bytes.fromhex("ce3e21e5ad88cdd31d193417fe0768edafd04c041b8ca69f428b931d5fadad97a315ffa4eb9828f619d30a8b7598cdbcd7322842a63980e8")

xored = b""
for i in range(len(enc_flag)):
    xored += bytes([enc_flag[i] ^ enc_msg[i]])

flag = b""
for i in range(len(xored)):
    flag += bytes([xored[i] ^ dec_msg[i]])

print(flag)
```

</details>
