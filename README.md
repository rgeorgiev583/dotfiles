# dotfiles

Some configuration files I've tweaked to my own use and benefit which I thought could also be useful to others.

# Prerequisites

- [Git](https://git-scm.com/)
- [fish](https://fishshell.com/)
- [Neovim](https://neovim.io/)
- [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

# Installation

Use the install script in the repo, providing macro definitions (if needed) on stdin. Each definition goes on a separate line with the following syntax:

    $ ./install.sh
    ${FILE_PATH1} ${MACRO_NAME1}=${MACRO_VALUE1}
    ${FILE_PATH2} ${MACRO_NAME2}=${MACRO_VALUE2}
    ...

This script uses `m4` to substitute each `${MACRO_NAME}` inside the specified `${FILE_PATH}` with the specified `${MACRO_VALUE}`.
