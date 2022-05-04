#
# ~/.bashrc
#

export PATH="$PATH:$HOME/go/bin"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

test -f "$HOME/.cargo/env" && source "$HOME/.cargo/env"

# Exit, if non-interactive shell.
[[ $- != *i* ]] && return

export BAT_THEME="OneHalfDark"
export COLORTERM=24bit
export HISTFILESIZE=3000
export HISTSIZE=3000
export MANPAGER='nvim +Man!'
export TERM=xterm-256color

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

test -e /usr/lib/mc/mc-wrapper.sh && \
        alias mc='. /usr/lib/mc/mc-wrapper.sh' # Ubuntu
test -e /usr/libexec/mc/mc-wrapper.sh && \
        alias mc='. /usr/libexec/mc/mc-wrapper.sh' # Fedora

alias ls='ls --color=auto'


function git-tip {
 git --no-pager log --oneline -1;
}

function git-fixes {
  git --no-pager log --format='Fixes: %h ("%s")' --abbrev=12 -1 $1;
}

function nvrs {
  export NVIM_LISTEN_ADDRESS=$(find /tmp/nvim* -type s  | fzf);
}

eval "$(starship init bash)"
