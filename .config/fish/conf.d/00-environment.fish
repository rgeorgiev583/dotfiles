# set Helix as the default editor
set --global --export EDITOR helix
set --global --export VISUAL helix

# colorize man pages
set --global --export MANPAGER 'less -R --use-color -Dd+g -Du+c'

# run `make` with as many jobs in parallel as there as processors
set --global --export MAKEFLAGS -j(nproc)

if test (count /etc/debuginfod/*.urls) -gt 0
    set --global --export DEBUGINFOD_URLS (cat /etc/debuginfod/*.urls)
end

# make `fzf` use fd(1)
set --global --export FZF_DEFAULT_COMMAND 'fd --type file --type symlink --hidden --exclude .git 2> /dev/null'

# make `ripgrep` read its config file
set --global --export RIPGREP_CONFIG_PATH $HOME/.config/ripgreprc

set --global --export DOTNET_CLI_TELEMETRY_OPTOUT 1

set fish_user_paths ~/.local/bin
set --global fisher_path $__fish_user_data_dir/fisher
