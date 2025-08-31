# Get Clawed

| Key            | Value                                                         |
|----------------|---------------------------------------------------------------|
| Challenge Name | Get Clawed                                                    |
| Author         | warlocksmurf                                                  |
| Category       | Forensics                                                     |
| Description    | I followed a TikTok video on how to get free pulls for Umamusume, now my waifu is gone! |
| Challenge Type | Static                                                        |
| Flag           | sunctf25{n0t_tr3v0r_fr0m_GTA}                                 |
| Score          | 200                                                           |

File(s) in `attachments/` are distributed to the participants.

## Solution

<details>
<summary>Click to expand</summary>

Analyze PCAP to identify [TrevorC2](https://nasbench.medium.com/understanding-detecting-c2-frameworks-trevorc2-2a9ce6f1f425) traffic. Decrypting it will identify the XOR key for the encrypted files. Extract the flag file from the AD1 and decrypt the files for the flag.

</details>
