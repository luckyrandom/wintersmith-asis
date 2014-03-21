# wintersmith-asis

Asis plugin for [wintersmith](https://github.com/jnordberg/wintersmith)
to include file as is.

[wintersmith-asis](https://github.com/luckyrandom/wintersmith-asis)
registers to `*.asis` files and passes the files as is to the url with
the suffix `.asis` removed. For example, to add `data.json`, you can
include the file `data.json` by rename name it as `data.json.asis`.

### install:

Install `npm install wintersmith-asis` in the project direcotry or  install `npm install -g wintersmith-asis` globally.

Then add `wintersmith-asis` to `config.json` like:

```json
{
  "locals": {
    "url": "http://localhost:8080",
    "name": "The Wintersmith's blog",
    "owner": "The Wintersmith",
    "description": "-32°C ain't no problems!",
    "index_articles": 3
  },
  "plugins": [
    "wintersmith-asis"
  ]
}
```
