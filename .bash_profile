#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# CONFIG {{{
# export PATH=/usr/local/bin:$PATH
  if [[ -d "$HOME/bin" ]] ; then
    export PATH="$HOME/bin:$PATH"
  fi

  # GOLANG {{{
    if which go &>/dev/null; then
      export GOROOT=/usr/lib/go
      export GOPATH=$HOME/go
      export PATH=$GOPATH/bin:$PATH
    fi
  #}}}
  # RUST {{{
    if which cargo &>/dev/null; then
      export PATH=$HOME/.cargo/bin:$PATH
    fi
  #}}}
  # RUBY {{{
    if which ruby &>/dev/null; then
      GEM_DIR=$(ruby -rubygems -e 'puts Gem.user_dir')/bin
      if [[ -d "$GEM_DIR" ]]; then
        export PATH=$GEM_DIR:$PATH
      fi
    fi
  #}}}
  # ECLIPSE {{{
    if [[ -d /opt/eclipse ]]; then
      export PATH=/opt/eclipse:$PATH
    fi
  #}}}

if [ -e /home/sid/.nix-profile/etc/profile.d/nix.sh ]; then . /home/sid/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
