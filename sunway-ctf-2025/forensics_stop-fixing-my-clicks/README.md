# Stop fixing my clicks

| Key            | Value                                                         |
|----------------|---------------------------------------------------------------|
| Challenge Name | Stop fixing my clicks                                         |
| Author         | warlocksmurf & zachwong02                                     |
| Category       | Forensics                                                     |
| Description    | Say that again?                                               |
| Challenge Type | Static                                                        |
| Flag           | sunctf{A_v3ry_le9A1_d0CUM3NT}                                 |
| Score          | 460                                                           |

File(s) in `attachments/` are distributed to the participants.

## Solution

<details>
<summary>Click to expand</summary>

1. EML file has a link to a suspicious ClickFix website
2. The ClickFix website has a suspicious payloads to exfiltrate files
3. Players have to deobfuscate the Pyarmor script to get the access key
4. Use the access key in the C2 server to obtain the exfiltrated flag

</details>
