#!/bin/bash

FILE_WGET "http://staruml.io/download/releases/StarUML-3.0.2-x86_64.AppImage" \
		  "Staruml" "${OUTPUT}/Staruml/staruml" "software/staruml/md5" "${HTTP_PROXY}"
if [ "0" == "$?" ];then
	cp software/staruml/staruml_logo.png ${OUTPUT}/Staruml/
	#INSTALL_ICON "${SOFTWARE_STARUML_DESKTOP_PATH}" "${HOME}/Desktop/" "${OUTPUT}/Staruml/staruml_logo.png" "${OUTPUT}/Staruml/staruml"
	MAKE_UBUNTU_ICON -o "${HOME}/Desktop/Staruml.desktop" \
					 -v "3.0.2" \
					 -t "Application" \
					 -n "Staruml" \
					 -i "${OUTPUT}/Staruml/staruml_logo.png" \
					 -e "${OUTPUT}/Staruml/staruml" \
					 -c "Tools" \
					 -S "true" -T "false"
fi
