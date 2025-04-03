# CliAppStore

An app store for CLI apps.


## Submit a New App

1. Fork this repository
1. Clone your fork to your computer
1. Duplicate the `_template_` directory into the `apps` directory
1. Update it to your app's values
    1. Replace the `main.png` or delete it
      to auto generate it from the `command` field in the `main.yaml`
    1. Replace the screenshots
    1. Update the `main.yaml` file
1. Open a Pull Request


## Claim Stewardship

1. Fork this repository
1. If the app's developer is also the maintainer
    - Then remove the `maintainer` field from your app's `main.yaml` file
    - Else set the respective maintainer
1. Commit the changes
1. Open a Pull Request


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


## Related

- [Terminal Trove] - Curated showcase for everything in the terminal.

[Terminal Trove]: https://terminaltrove.com/


## TODO

- Check out https://graphcms.com
- Check out GUIs Considered Harmful (1998) // Hacker News
  (http://porkmail.org/era/unix/guis.txt)
- Redirect surge.sh url
- Add comparison page.
    E.g. https://cliapp.store/comparisons/vim/neovim
