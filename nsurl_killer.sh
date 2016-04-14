#! /bin/sh
trap "exit" SIGHUP SIGINT SIGTERM

while [[ $(launchctl list | awk '($3 ~ /nsurl/ && $1 > 0) {c++ }; END {print c}') -lt 2 ]]; do
	#statements
	echo "Sleeping..."
	sleep 3
done

find /System/Library/Launch* -iname "com.apple.nsurl*" -exec launchctl unload {} \;