# sherman bootstrap installation
if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

# for neovim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

set -x GOPATH $HOME/go
set -x GOROOT /usr/local/Cellar/go/1.11.4/libexec/

set -x PATH $PATH $GOPATH/bin

set -x XDG_CONFIG_HOME ~/.config

set -x PYENV_ROOT $HOME/.pyenv

set -x PATH $PYENV_ROOT/bin $PATH
. (pyenv init - | psub)

set -x PYTHONPATH $PYTHONPATH $HOME/.pyenv/versions/3.6.3/lib/python3.6/site-packages/```

# for setting environment
set -x config_file ~/.config/fish/config.fish
alias setenv='. $config_file'

set -g theme_color_scheme gruvbox

# for git
eval (hub alias -s)

