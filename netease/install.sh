#!/bin/bash

if [ ! -z $(which netease-cloud-music) ];then
	return
fi

DEB_WGET "$NETEASE_MUSIC_DOWNLOAD"

if [ "0" == "$?" ];then
	if [ -f /usr/share/applications/netease-cloud-music.desktop ];then
		sed -i /'Exec=.*'/c'Exec=sh -c \"unset SESSION_MANAGER && netease-cloud-music %U\"' /usr/share/applications/netease-cloud-music.desktop
	fi
fi
