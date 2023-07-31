#
# ~/.zprofile
#

if [[ -f /etc/profile ]]; then
	source /etc/profile
fi

if test -z "$XDG_RUNTIME_DIR";
then
	export XDG_RUNTIME_DIR=/tmp/`id -u`-runtime-dir
	if ! test -d $XDG_RUNTIME_DIR;
	then
		mkdir $XDG_RUNTIME_DIR
		chmod 0700 $XDG_RUNTIME_DIR
	fi
fi
