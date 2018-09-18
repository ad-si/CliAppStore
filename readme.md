# CliAppStore

An app store for CLI apps.


## Development

Use chokidar to auto restart the server:

```sh
chokidar \
  project.yml apps images templates \
  --polling \
  --command 'killall sprinkles; sprinkles -serve 5000'
```

Open the website at http://127.0.0.1:5000
and use the [Live Reload] Firefox plugin to auto reload the website.

[Live Reload]: https://github.com/blaise-io/live-reload


## TODO

- Check out https://graphcms.com
- Check out GUIs Considered Harmful (1998) // Hacker News
  (http://porkmail.org/era/unix/guis.txt)


## How to Add a New App

- Create a new directory in `/apps`
- Add files `/apps/<name>/main.yaml`
- Add main image `/apps/<name>/main.png` (checkout [./makefile])
