# Summary

The discord bot using google text to speach.

# Requirements

* [Create GCP SA](https://cloud.google.com/text-to-speech/docs/quickstart-protocol) on GCP
  * Create json key of SA and put `sa-key.json` to `${workspaceFolder}/sa-key.json`.
* [Create your own discord bot and get the token](https://qiita.com/PinappleHunter/items/af4ccdbb04727437477f#bot%E7%94%A8%E3%81%AE%E3%83%88%E3%83%BC%E3%82%AF%E3%83%B3%E3%82%92%E6%89%8B%E3%81%AB%E5%85%A5%E3%82%8C%E3%82%8B)
* Set environment variables in `docker-compose.yml`
* Run `$ docker-compose up -d` on your docker server
* [Invite your bot to your discord server](https://discordpy.readthedocs.io/en/latest/discord.html#inviting-your-bot)

# Upstart

```bash
$ docker-compose build
$ docker-compose up -d
```

# Author

https://github.com/kotofurumiya/helmholtz