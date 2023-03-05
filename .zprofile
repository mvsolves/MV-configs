eval "$(/opt/homebrew/bin/brew shellenv)"

export PYTHONPATH=/Users/marcosvelazquez/Library/Python/3.8/bin:/opt/homebrew/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/bin

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_321.jdk/Contents/Home
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export NVM_DIR="$HOME/.nvm"                                                                         
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"



export PATH="/usr/local/bin/tailwindcss-language-server:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

source ~/.zshrc
