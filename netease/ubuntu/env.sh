#!/bin/bash
if [[ ! $UBUNTU ]]; then
	return
fi

if [ ! -z $(which netease-cloud-music) ];then
	return
fi
ADD_SW "libcanberra-gtk-module"
NETEASE_MUSIC_DOWNLOAD="http://d1.music.126.net/dmusic/netease-cloud-music_1.1.0_amd64_ubuntu.deb"
