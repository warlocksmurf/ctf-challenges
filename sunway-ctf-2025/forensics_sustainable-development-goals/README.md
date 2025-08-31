# Sustainable Development Goals

| Key            | Value                                                         |
|----------------|---------------------------------------------------------------|
| Challenge Name | Sustainable Development Goals                                 |
| Author         | warlocksmurf & zachwong02                                     |
| Category       | Forensics                                                     |
| Description    | Turtles are endangered, and their shells offer them little protection against threats caused by environmental destruction. Please protect the earth's environment and climate! |
| Challenge Type | Static                                                        |
| Flag           | sunctf25{sh3lly_1n_my_b3lly}                                  |
| Score          | 400                                                           |

File(s) in `attachments/` are distributed to the participants.

## Solution

<details>
<summary>Click to expand</summary>

A suspicious process (svchost.exe) was invoked after the user opens the malicious DOCM file. This suspicious process can be dumped and analyzed with dnSpy since it is a .NET malware. Analyzing it, we can see that it is injecting an AES-encrypted shellcode into a process (explorer.exe). Analyzing it, we can see the key and IV being stored in the environmental variables. After decrypting it, the flag can be obtained after debugging the decrypted shellcode.

EDIT: malfind can easily get the shellcode too

</details>
