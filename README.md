# configs
A record of my configurations for shell, the plugins for neovim, and tmux

# Steps to install configurations (FOLLOW IN ORDER)

# Must run in order to install neovim!
```
sudo apt update
```

# Creates a folder named configs
```
git clone https://github.com/mvsolves/configs
```

# Moves all hidden files in configs into home directory (enter yes and and ignore error upon running the command
```
mv -f ~/configs/.* ~
```

# Follow the instructions in packageInstallInfo
```
vi packageInstallInfo
```

# Reload shell (if using zsh, reload .zshrc, if using bash, reload .bashrc etc.)
```
source ~/.bashrc
```

DONE!
