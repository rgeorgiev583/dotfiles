if not set -q XDG_SESSION_TYPE; or test $XDG_SESSION_TYPE = tty -o $XDG_SESSION_TYPE = unspecified
    # set Neovim as the default editor
    set --global --export EDITOR nvim
    set --global --export VISUAL nvim

    # set Neovim as the default diff tool
    set --global --export DIFFPROG 'nvim -d'
else
    # set VSCode as the default editor
    set --global --export EDITOR 'code --wait'
    set --global --export VISUAL 'code --wait'

    # set VSCode as the default diff tool
    set --global --export DIFFPROG 'code --wait --diff'
end

# run `make` with as many jobs in parallel as there as processors
set --global --export MAKEFLAGS -j(nproc)

set debuginfod_files /etc/debuginfod/*.urls
set --global --export DEBUGINFOD_URLS (cat $debuginfod_files < /dev/null)

# make `fzf` use fd(1)
set --global --export FZF_DEFAULT_COMMAND 'fd --type file --type symlink --hidden --exclude .git 2> /dev/null'

# make `ripgrep` read its config file
set --global --export RIPGREP_CONFIG_PATH $HOME/.config/ripgreprc

set --global --export DOTNET_CLI_TELEMETRY_OPTOUT 1

set fish_user_paths ~/.local/bin EXTRA_USER_PATHS
set --global fisher_path $__fish_user_data_dir/fisher
