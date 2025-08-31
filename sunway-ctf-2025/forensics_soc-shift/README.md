# SOC Shift

| Key            | Value                                                         |
|----------------|---------------------------------------------------------------|
| Challenge Name | SOC Shift                                                     |
| Author         | warlocksmurf                                                  |
| Category       | Forensics                                                     |
| Description    | We recently observed another traffic spike targeting our sign-in endpoint around 12:00 AM on Labour Day. Threat intelligence conducted an investigation and determined that this was an attack conducted by APT Lobster, a known local threat actor. Maybe we can pull some useful IOCs from their activity. |
| Challenge Type | Static                                                        |
| Flag           | sunctf25{S1EM_b4s1cs_f0r_l0g_4n4Lys1s!}                       |
| Score          | 150                                                           |

File(s) in `attachments/` are distributed to the participants.

## Solution

<details>
<summary>Click to expand</summary>

Players are given a CSV log dump. Since the TI team mentioned that the threat actor was a "local threat actor", grouping the logs based on `Country ISO Code`, the flag can be identified in one of the suspicious User Agents.

</details>
