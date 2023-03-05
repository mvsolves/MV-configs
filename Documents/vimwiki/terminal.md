# Vimwiki -> Terminal

## terminal commands
	<mkdir ex{1..5}> 		(creates 5 folders named ex1 up to ex5)
	vimtutor						(A literal text document covering the topics of basic vim usage)
	curl https://ipinfo.io/ip (Get W.A.N. ip address IF computer is behind router)
	
	grep -Iril <function-name> (Recursively find function-name in current folders)
	grep -r 'text goes here' path_goes_here (Find files that contain "keyword" recursively from current folder)
	find . -maxdepth 6 -name "*keyword*" -print (Find filename with *keyword* with a max recursive depth of 6)
	
	ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2  (Get ipv4 address)
	sudo lsof -i -P -n | grep LISTEN (Check what ports are in use)

