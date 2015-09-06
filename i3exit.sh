#!/bin/sh

lock() {
	CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
	$CURRENT_DIR/lock.sh
}

case "$1" in
	lock)
		lock
		;;
	logout)
		i3-msg exit
		;;
	suspend)
		systemctl suspend
		;;
	hibernate)
		lock && systemctl hibernate
		;;
	reboot)
		systemctl reboot
		;;
	shutdown)
		systemctl poweroff
		;;
	*)
	echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
	exit 2
esac

exit 0
