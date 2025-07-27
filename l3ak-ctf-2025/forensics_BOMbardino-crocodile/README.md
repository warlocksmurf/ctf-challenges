# BOMbardino crocodile

| Key            | Value                                                                        |
|----------------|------------------------------------------------------------------------------|
| Challenge Name | BOMbardino crocodile                                                         |
| Author         | warlocksmurf                                                                 |
| Category       | Forensics                                                                    |
| Description    | APT Lobster has successfully breached a machine in our network, marking their first confirmed intrusion. Fortunately, the DFIR team acted quickly, isolating the compromised system and collecting several suspicious files for analysis. Among the evidence, they also recovered an outbound email sent by the attacker just before containment, I wonder who was he communicating with... The flag consists of 2 parts. |
| Challenge Type | Static                                                                       |
| Flag           | L3AK{Br40d0_st34L3r_0r_br41nr0t}                                             |
| Score          | ???                                                                          |

*File(s) in `attachments/` are distributed to the participants.*

## Solution
A malicious BAT file can be identified in the user's Download directory. Analyzing the BAT file will seem difficult at first, some may think of some correspondence in Chinese. Noticing the special marker placed at the beginning of the text stream, we can confirm that some sort of Byte Order Mark (BOM)-based obfuscation was applied. So by removing the 0xFF and 0xFE bytes, the payload can be analyzed.

The payload drops another BAT file to startup folder as persistence (First part of the flag). It then fetches another BAT file onto C:\Public\Document (intentionally mispelled) where a Python stealer can be identified in one of the folders. The Python stealer is encrypted with PyObfuscate and decrypting it will show that several files and an encrypted Desktop screenshot is exfiltrated to Discord C2. The RC4 encryption key is hardcoded in the Python stealer. The challenge also provides an EML file with the Discord invite. There, the encrypted Desktop screenshot can be downloaded and decrypted (Second part of the flag).