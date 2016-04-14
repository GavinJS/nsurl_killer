#! /bin/sh

/usr/bin/curl "https://raw.githubusercontent.com/GavinJS/nsurl_killer/master/nsurl_killer.plist" -o /Users/Shared/bin/nsurl_killer.plist --create-dirs
/usr/bin/curl "https://raw.githubusercontent.com/GavinJS/nsurl_killer/master/nsurl_killer.sh" -o /Users/Shared/bin/nsurl_killer.sh --create-dirs

chown root /Users/Shared/bin/nsurl_killer.plist
chmod 644 /Users/Shared/bin/nsurl_killer.plist
chmod 744 /Users/Shared/bin/nsurl_killer.sh

ln -s /Users/Shared/bin/nsurl_killer.plist /Library/LaunchAgents/nsurl_killer.plist
ln -s /Users/Shared/bin/nsurl_killer.plist /Library/LaunchDaemons/nsurl_killer.plist