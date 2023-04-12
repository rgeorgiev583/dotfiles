# dotfiles

Some configuration files I've tweaked to my own use and benefit which I thought could also be useful to others.

The files are located in `homedir`, the contents of which are supposed to be copied into the user's home directory.

## Prerequisites

The `install.sh` script installs them automatically.

## Installation

Run the `install.sh` script in the repo.  If you want to customize the macro definition list, use the following command:

    ./install.sh $macro_definition_list_file

### Macro definition list file format

Each macro definition goes on a separate line with the following syntax:

    ${FILE_PATH1} ${MACRO_NAME1}=${MACRO_VALUE1}
    ${FILE_PATH2} ${MACRO_NAME2}=${MACRO_VALUE2}
    ...

The `install-dotfiles.sh` script (which is run by `install.sh`) uses `m4` to substitute each `${MACRO_NAME}` inside the
specified `${FILE_PATH}` with the specified `${MACRO_VALUE}`.

The currently used macro definitions are listed in the `macro-defs.lst` file, along with example values for them.
