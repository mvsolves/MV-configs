export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_321.jdk/Contents/Home
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# To set 'nvim' as default when calling 'vim'
alias vim='nvim'

# To set editor to load 'nvim'
export EDITOR='nvim'

export CLASSPATH=.:/Users/marcosvelazquez/Library/CloudStorage/OneDrive-DePaulUniversity/DePaul\ courses/2022/WINTER\ 22/CSC376/finalProj/jsoup-1.13.1.jar:/Users/marcosvelazquez/Library/CloudStorage/OneDrive-DePaulUniversity/DePaul\ courses/2022/WINTER\ 22/CSC376/finalProj/java-json.jar



alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
