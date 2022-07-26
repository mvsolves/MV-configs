# Vimwiki -> Tmux (prefix is <ctrl-b>)

## Terminal commands
		tmux a -t <enter-tmux-session>	(Open specific tmux session)
		tmux new 												(Creates new tmux session)
		tmux source-file ~/.tmux.conf		(Reload any changes in tmux.conf in order to apply to current sessions)

## Mappings
		prefix-c 												(Create new window)
		prefix-x 												(Close current window)
		prefix-d												(Exit out of tmux session)
		prefix-$												(Rename tmux session)
		prefix-,												(Rename tmux window)
		prefix-%												(Split window vertically?)
		prefix-"												(Split window horizontally?)
		prefix-<ctrl+command+arrow>			(Resize pane)
