# Who's Alpha 2

| Key            | Value                                                         |
|----------------|---------------------------------------------------------------|
| Challenge Name | Who's Alpha 2                                                 |
| Author         | warlocksmurf & Sai                                            |
| Category       | OSINT                                                         |
| Description    | Well done agent, now we know who is behind this "Alpha" surname. Time to find him and end this group illegal operation. Continue the investigation in the Pastebin where you left, might be something useful. With the information obtained from the previous challenge, find the whereabout of this "Alpha". Flag format: `sunctf25{Village_Name}`  |
| Challenge Type | Static                                                        |
| Flag           | sunctf25{Kampung_Sungai_Bako_Jaya}                            |
| Score          | 300                                                           |

File(s) in `attachments/` are distributed to the participants.

## Solution

<details>
<summary>Click to expand</summary>

1. Inside Charlie pastebin, is another txt file which is the conversation transcript between Alpha and Charlie. Read the log and you will see the last conversation between Charlie and Alpha. Alpha mentioned only contacting him using the telegram bot (@TigerP4tch). Pastebin: `https://pastebin.com/9fMrXbQy`
2. Access the telegram bot, click `/start` and it will be asking for verification, the bot will only accept `Bravo` or `Charlie` as response. Once verification success, the bot will get a Google Map
3. Using the info we got from the conversation, here are a few hints: Farm (say by Alpha about he owns a farm) and located in Kuching (Said by Charlie in her conversation with Bravo). To find this location is quite easy, just search `Farm in Kuching`, and look through of each farm, and find the same location with the image and click on the location to get the Village name.

</details>
