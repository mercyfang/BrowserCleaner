#!/bin/bash
echo "[1] Safari
[2] Chrome
[3] both
[4] exit"

read CHOICE

if [ $CHOICE -eq "1" ]
then
	echo "Deleting Safari cookies and cache"
	rm -rf /Users/user/Library/Caches/com.apple.Safari/
	echo "Safari cookies and cache deleted"
elif [ $CHOICE -eq "2" ]
then
	echo "Deleting Chrome cookies and cache"
	rm -rf /Users/user/Library/Caches/Google/Chrome/Default/Cache/
	rm -rf /Users/user/Library/Caches/Google/Chrome/Default/Media\ Cache/
	echo "Chrome cookies and cache deleted"
elif [ $CHOICE -eq "3" ]
then
	echo "Deleting both Safari and Chrome cookies and cache"
	rm -rf /Users/user/Library/Caches/com.apple.Safari/
	echo "Safari cookies and cache deleted"
	rm -rf /Users/user/Library/Caches/Google/Chrome/Default/Cache/
        rm -rf /Users/user/Library/Caches/Google/Chrome/Default/Media\ Cache/
	echo "Chrome cookies and cache deleted"
elif [ $CHOICE -eq "4" ]
then
	echo "Thanks for using browser cleaner by Mercy"
else
	echo "Command not recognizable"
fi
