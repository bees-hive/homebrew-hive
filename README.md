# homebrew-hive
A Homebrew tap for the formulae of the Bees Hive organization.

## Usage

```shell
brew tap bees-hive/hive
brew update
brew install bees-hive/hive/<formula>
```

## Available Tools
- `brew install bees-hive/hive/aws-creds` for https://github.com/bees-hive/aws-creds

Elegant Git is no longer in this tap. Use `brew install extsoft/tools/elegant-git`
(https://github.com/extsoft/elegant-git). `brew update` migrates an existing
`extsoft/hive/elegant-git` install. If you tapped `bees-hive/hive`, that clone still has the old
formula, so uninstall it and install from `extsoft/tools`:

```shell
brew uninstall elegant-git
brew install extsoft/tools/elegant-git
```

PEM is deprecated. Do not install `bees-hive/hive/pem`. Remove an existing install with
`brew uninstall pem`.


## Contributing

The update flow is

```shell
formula=aws-creds
brew edit ${formula}
brew audit --strict --formula ${formula}
brew reinstall ${formula}
# commit and push
cd "$(brew --repository bees-hive/hive)"
# and other regular commands
```

The version update flow is

```shell
brew bump-formula-pr --no-audit --tag=${TAG} --revision=${COMMIT} ${formula}
```

## Troubleshooting
**IMPORTANT** First read the [Troubleshooting Checklist](http://docs.brew.sh/Troubleshooting.html).

Use `brew gist-logs <formula>` to create a [Gist](https://gist.github.com/) and post the link in your issue.

Search [open](https://github.com/bees-hive/homebrew-hive/issues?state=open) and [closed](https://github.com/bees-hive/homebrew-hive/issues?state=closed) issues. See also Homebrew's  [Common Issues](http://docs.brew.sh/Common-Issues.html) and [FAQ](http://docs.brew.sh/FAQ.html).

