#!/bin/bash

CLION_NAME="CLion-2018.3.3"
CLION_OUT_PATH="${OUTPUT}/CLion/clion-2018.3.3"
CLION_DOWNLOAD_URL="https://download.jetbrains.8686c.com/cpp/${CLION_NAME}.tar.gz"
CLION_CRACK_3.1="JetbrainsCrack-3.1-release-enc"
CLION_CRACK_4.2="JetbrainsIdesCrack-4.2-release"

TAR_WGET "$CLION_DOWNLOAD_URL" "${CLION_NAME}" "${OUTPUT}/CLion/${CLION_NAME}.tar.gz" "software/clion/md5"

if [ "0" == "$?" ];then
	cp software/clion/${CLION_CRACK_4.2}.jar "${CLION_OUT_PATH}/lib"
	echo "-javaagent:${CLION_OUT_PATH}/lib/${CLION_CRACK_4.2}.jar" >> ${CLION_OUT_PATH}/bin/clion.vmoptions
	echo "-javaagent:${CLION_OUT_PATH}/lib/${CLION_CRACK_4.2}.jar" >> ${CLION_OUT_PATH}/bin/clion64.vmoptions
	MAKE_UBUNTU_ICON -o "${HOME}/Desktop/clion.desktop" \
					 -v "${CLION_NAME}" \
					 -t "Application" \
					 -n "${CLION_NAME}" \
					 -i "${OUTPUT}/CLion/clion-2018.3.3/bin/clion.svg" \
					 -e "${OUTPUT}/CLion/clion-2018.3.3/bin/clion.sh" \
					 -c "IDEA" \
					 -S "true" -T "false"
fi
