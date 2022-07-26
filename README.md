# INSTALL INSTRUCTIONS

## Creates a folder named configs
```
git clone https://github.com/mvsolves/configs
```
## Moves all hidden files in configs into home directory (enter yes and and ignore error upon running the command
```
mv -f ~/configs/.* ~
```
## Follow the instructions in packageInstallInfo

```
vi .packageInstallInfo
```
## Reload shell (if using zsh, reload .zshrc, if using bash, reload .bashrc etc.)

```
source ~/.bashrc
 ```

DONE!

## Notes
 Please ignore the .tmux.conf as it is a symbolic link (unless you are using mac and installed tmux via brew). Rename the ".tmux.conf.BK" to ".tmux.conf" as this shall work for linux systems
