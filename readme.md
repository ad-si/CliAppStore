# Cli Apps

An app store for CLI apps.


## Development

Use chokidar to auto restart the server:

```sh
chokidar \
  project.yml apps images templates \
  --polling \
  --command 'killall sprinkles; sprinkles -serve 5000'
```

Use Live Reload Firefox plugin to auto reload the website.
