# Allowance

| Key            | Value                                                                        |
|----------------|------------------------------------------------------------------------------|
| Challenge Name | Allowance                                                             |
| Author         | warlocksmurf                                                                 |
| Category       | Blockchain                                                                    |
| Description    | Can you donate me some Ethereum for dinner tomorrow? |
| Challenge Type | Static                                                                       |
| Flag           | GCTF{th3_b4s1cs_0f_bl0ckch41n}                                                       |
| Score          | ???                                                                          |

*File(s) in `attachments/` are distributed to the participants.*

## Solution
The player is required to pass in the secret passphrase (in bytes32 format) and send 0.01 ether to `claim()`.

```
cast call <setup-contract-address> "challengeInstance() (address)" --rpc-url http://localhost:48334/a00d86c0-ee39-49d9-9f7a-49e0da16c6fc

cast keccak "warlocksmurf wants your ethereum"

cast send <Gurl-contract-address> "claim(bytes32)" <keccak-value-of-warlocksmurf> --value 0.01ether --rpc-url http://localhost:48334/a00d86c0-ee39-49d9-9f7a-49e0da16c6fc --private-key <private-key>

cast call <setup-contract-address> "isSolved() (bool)" --rpc-url http://localhost:48334/a00d86c0-ee39-49d9-9f7a-49e0da16c6fc
```
