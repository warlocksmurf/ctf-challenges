# QnA

| Key            | Value                                                                        |
|----------------|------------------------------------------------------------------------------|
| Challenge Name | QnA                                                             |
| Author         | warlocksmurf                                                                 |
| Category       | Forensics                                                                    |
| Description    | I just want to setup my Windows password, why is Microsoft asking questions about my personal life? |
| Challenge Type | Static                                                                       |
| Flag           | GCTF{p3rs0nal_s3cr3ts_r3g1stry}                                                       |
| Score          | ???                                                                          |

*File(s) in `attachments/` are distributed to the participants.*

## Solution
The player is given Windows registries to investigate. The question mentioned about Windows password and "asking questions", so the user should be looking for the backup questions located in the SAM registry using any registry analysis tools. The path of the backup questions is located in `\SAM\Domains\Account\Users`. There is also a NirSoft tool that helps extract these security questions directly.
