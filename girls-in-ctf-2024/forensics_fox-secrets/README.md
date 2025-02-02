# Fox Secrets

| Key            | Value                                                                        |
|----------------|------------------------------------------------------------------------------|
| Challenge Name | Fox Secrets                                                             |
| Author         | warlocksmurf                                                                 |
| Category       | Forensics                                                                    |
| Description    | I might have accidentally place the flag as a password on Firefox, I hope Mr Mozarella is not mad at me... |
| Challenge Type | Static                                                                       |
| Flag           | GCTF{m0zarella_f1ref0x_p4ssw0rd}                                                       |
| Score          | ???                                                                          |

*File(s) in `attachments/` are distributed to the participants.*

## Solution
The player is given an AD1 image to investigate. The player is expected to know how to analyze AD1 file with FTK imager and understand the concept of Firefox forensics. Essentially, Firefox passwords are stored in the `logins.json` file, and they can be decrypted with the `key4.db` file, both files located in the Firefox folder. So users can use tools like [firefox_decrypt.py](https://github.com/unode/firefox_decrypt) to decrypt the passwords easily.

```
└─$ python firefox_decrypt.py ~/Desktop/sharedfolder/GCTF2024/Fox\ Secrets/Firefox 
Select the Mozilla profile you wish to decrypt
1 -> Profiles/khh2eogj.default
2 -> Profiles/j4gjesg4.default-release
2

Website:   https://github.com
Username: 'warlocksmurf'
Password: 'GCTF{m0zarella_'

Website:   https://www.rehack.xyz
Username: 'bluelobster'
Password: 'f1ref0x_p4ssw0rd}'

Website:   https://ctftime.org
Username: 'pepperonilover'
Password: 'ilovecheese'
```