#!/bin/sh

GLOBAL_RC=/etc/pythonrc
LOCAL_RC=$HOME/.pythonrc

if [[ -f $GLOBAL_RC ]];
then
	export PYTHONSTARTUP=$GLOBAL_RC
fi

if [[ -f $LOCAL_RC ]];
then
	export PYTHONSTARTUP=$LOCAL_RC
fi
