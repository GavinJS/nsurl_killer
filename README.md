# nsurl_killer

A startup script which kills 'nsurlsessiond' and 'nsurlstoraged' on OS X.  I wrote this tool in response to an overwhelming number of Mac users complaining that these background services routinely download huge amounts of data over metered connections.

Please note that these services are used by myriad other foreground and background applications including the Mac App Store.  Disabling them may cause adverse side-effects.

!!!This tool is provided as is with absolutely no warranty, support or liability.

## Installing

To install the tool, run the following command in the terminal and then reboot:

	/usr/bin/curl -sL "https://raw.githubusercontent.com/GavinJS/nsurl_killer/master/install.sh" | sudo /bin/sh --

## Removal

To remove run the following commands in a terminal:

	sudo rm /Library/LaunchAgents/nsurl_killer.plist
	sudo rm /Library/LaunchDaemons/nsurl_killer.plist
	rm /Users/Shared/bin/nsurl_killer.plist
	rm /Users/Shared/bin/nsurl_killer.sh

## Bugs

If you find bugs with this tool please log an issue on GitHub here
	https://github.com/GavinJS/nsurl_killer/issues
