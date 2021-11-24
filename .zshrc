[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.pyenv/bin:$HOME/.local/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/github
source $HOME/.pyenv/versions/3.9.0/bin/virtualenvwrapper.sh

# source $HOME/.local/bin/virtualenvwrapper.sh

# export VIRTUALENVWRAPPER_PYTHON=$HOME/.local/pipx/venvs/virtualenvwrapper/bin/python

# take out if using oh my zsh
autoload -Uz compinit
compinit

autoload -U bashcompinit
bashcompinit

# eval $(ssh-agent) > /dev/null

# export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-bundle.crt
# export SSL_CERT_FILE=/etc/ssl/certs/ca-bundle.crt

eval "$(register-python-argcomplete pipx)"

eval "$(starship init zsh)"
