# To set 'nvim' as default when calling 'vim'
alias vim='nvim'

# To set editor to load 'nvim'
export EDITOR='nvim'

# Runs the clientSetup
alias clientSetup='zsh ~/.snippets/clientSetup.sh'


# A path to MV's code
alias code='cd ~/Documents/MV/code;pwd'


# Copy path to clipboard using proper escape sequences
alias cwd='printf "%q\n" "$(pwd)" | pbcopy'

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"

