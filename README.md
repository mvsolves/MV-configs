# INSTALL INSTRUCTIONS


## PACKAGES NEEDED BEFORE CONTINUING
Install neovim
https://github.com/neovim/neovim/wiki/Installing-Neovim

Install tmux
https://github.com/tmux/tmux/wiki/Installing



## 1. Creates a folder named configs
```
git clone https://github.com/mvsolves/configs
```
## 2. Moves all hidden files in configs into home directory (enter yes and and ignore error upon running the command
```
mv -f ~/configs/.* ~
```
## 3. Follow the instructions in packageInstallInfo

```
vi .packageInstallInfo
```
## 4. Reload shell (if using zsh, reload .zshrc, if using bash, reload .bashrc etc.)

```
source ~/.<your-current-working-shell>rc
 ```

DONE!

## Notes
 Please ignore the .tmux.conf as it is a symbolic link (unless you are using mac and installed tmux via brew). Rename the ".tmux.conf.BK" to ".tmux.conf" as this shall work for linux systems
