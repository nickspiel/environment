# .files

These are my dotfiles. Take anything you want, but at your own risk.

It mainly targets macOS systems, but it works on at least Ubuntu as well.

## Highlights

- Minimal efforts to install everything, using a [Makefile](./Makefile)
- Mostly based around Homebrew, Caskroom and Node.js, latest Bash + GNU Utils
- Fast and slick powerline10k prompt
- Updated macOS defaults
- Well-organized and easy to customize

## Installation

On a sparkling fresh installation of macOS:

```bash
sudo softwareupdate -i -a
xcode-select --install
```

The Xcode Command Line Tools includes `git` and `make` (not available on stock macOS).

Clone manually into the desired location:

```bash
git clone git@github.com:nickspiel/environment.git ~/.dotfiles
```

Use the [Makefile](./Makefile) to install everything [listed above](#package-overview),
and [configs](./configs) (using [stow](https://www.gnu.org/software/stow/)):

```bash
cd ~/.dotfiles
make
```

## Credits

Many thanks to the [dotfiles community](https://dotfiles.github.io).
