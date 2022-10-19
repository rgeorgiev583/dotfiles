# dotfiles

Some configuration files I've tweaked to my own use and benefit which I thought could also be useful to others.

# Prerequisites

- [Git](https://git-scm.com/)
- [fish](https://fishshell.com/)
- [Neovim](https://neovim.io/)
- [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

# Installation

Use the provided install script as follows, where `MACRO_DEF` is a macro definition with the syntax `${FILE_PATH}/${MACRO_NAME}=${MACRO_VALUE}`:

    ./install.sh MACRO_DEF...

This script uses `m4` to substitute each `${MACRO_NAME}` inside the specified `${FILE_PATH}` with the specified `${MACRO_VALUE}`.
