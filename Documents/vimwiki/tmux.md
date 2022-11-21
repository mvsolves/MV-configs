# Vimwiki -> Tmux (prefix is <ctrl-b>)

## Terminal commands
		tmux a -t <enter-tmux-session>	(Open specific tmux session)
		tmux new 												(Creates new tmux session)
		tmux source-file ~/.tmux.conf		(Reload any changes in tmux.conf in order to apply to current sessions)
		tmux send-keys <keys>						(Send keys to current tmux window. Eg. :wq Enter (to quit VIM))

## Mappings
		prefix-c 												(Create new window)
		prefix-x 												(Close current window)
		prefix-d												(Exit out of tmux session)
		prefix-$												(Rename tmux session)
		prefix-,												(Rename tmux window)
		prefix-%												(Split window vertically?)
		prefix-"												(Split window horizontally?)
		prefix-<ctrl+command+arrow>			(Resize pane)
		prefix :splitw -l <num>					(Create horizontal split with a length of <num> lines)
		prefix :splitw -p <num>					(Create horizontal split with a percentage of <num> lines)
		prefix :resize-pane <direction>	(-U is up, -D is down, -L is left, -R is right)
		prefix :resize-pane <direction> <num>	(-U is up, -D is down, -L is left, -R is right, num of cells to move)
		
		MV-mappings
		prefix C-x											(Run command in all windows and panes)
