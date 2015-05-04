# wintersmith-asis

`wintersmith-asis` is a plugin for
[wintersmith](https://github.com/jnordberg/wintersmith) to include
file as is.

[wintersmith-asis](https://github.com/luckyrandom/wintersmith-asis)
registers to `*.asis` and `_asis_.*` files, and passes the files as is
to the url with the suffix or prefix removed. For example, you can add
`data.json` to website by including file `_asis_.data.json` in content
directory.

### install:

Install with command
````
npm install [-g] wintersmith-asis
```
 
Then add `wintersmith-asis` to the _end_ of `plugins` of `config.json`.

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
    "some_other_plugins",
    "wintersmith-asis"
  ]
}
```

