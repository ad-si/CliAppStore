# CliAppStore

An app store for CLI apps.


## Development

Use chokidar to auto restart the server:

```sh
chokidar \
  project.yml apps images templates \
  --initial \
  --polling \
  --command 'killall sprinkles; sprinkles -serve 5000'
```

Open the website at http://127.0.0.1:5000
and use the [Live Reload] Firefox plugin to auto reload the website.

[Live Reload]: https://github.com/blaise-io/live-reload


## Deployment

1. Build the website with `make baked`
1. Deploy the `./baked` directory with `surge ./baked`
1. http://cliappstore.surge.sh


## Analytics

Hosted on: [feram.usesfathom.com](https://feram.usesfathom.com)


## TODO

- Check out https://graphcms.com
- Check out GUIs Considered Harmful (1998) // Hacker News
  (http://porkmail.org/era/unix/guis.txt)
