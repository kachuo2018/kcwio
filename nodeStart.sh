#!/bin/bash

. ./mongodbConfig.sh

NODEINFO_PATH=/home/kcwio
NODECFG_PATH=${HOME}

if ! cd ${NODEINFO_PATH}
then
	printf "\\n\\tUnable to enter directory %s.\\n" "${NODEINFO_PATH}"
	printf "\\n\\tExiting now.\\n\\n"
	exit 1;
fi

printf "\\n\\tInstallation node.\\n"
if ! dpkg -i kcwio_1.0.0-1_amd64.deb
then
    printf "\\tUnable to installation node.\\n"
	printf "\\n\\tExiting now.\\n\\n"
	exit 1;
fi

#if ! cat << EOF >>/home/kcw/.bashrc
if ! cat << EOF >>~/.bashrc
export PATH=$PATH:/usr/local/kcwio/bin
EOF
    then
		printf "\\tUnable to write to file ~/.bashrc.\\n"
		printf "\\n\\tExiting now.\\n\\n"
		exit 1;
	fi

if ! source ~/.bashrc
then
    printf "\\tUnable to source ~/.bashrc.\\n"
	printf "\\n\\tExiting now.\\n\\n"
	exit 1;
fi

printf "\\n\\tCreate node config directory.\\n"
if [ -d "$NODECFG_PATH" ]
then
	if [ ! -d "$NODECFG_PATH/.local" ]
	then
		if ! mkdir "${NODECFG_PATH}/.local"
    	then
        	printf "\\tUnable to create directory %s/.local.\\n" "${NODECFG_PATH}"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
    	fi
	fi

	if [ ! -d "$NODECFG_PATH/.local/share" ]
	then
		if ! mkdir "${NODECFG_PATH}/.local/share"
    	then
        	printf "\\tUnable to create directory %s/.local/share.\\n" "${NODECFG_PATH}"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
    	fi
	fi
	NODECFG_PATH=${NODECFG_PATH}/.local/share
    if ! mkdir "${NODECFG_PATH}/kcwio"
    then
        printf "\\tUnable to create directory %s/kcwio.\\n" "${NODECFG_PATH}"
		printf "\\n\\tExiting now.\\n\\n"
		exit 1;
    fi
    if ! mkdir "${NODECFG_PATH}/kcwio/nodkcw/"
    then
        printf "\\tUnable to create directory %s/kcwio/nodkcw.\\n" "${NODECFG_PATH}"
		printf "\\n\\tExiting now.\\n\\n"
		exit 1;
    fi
    if ! mkdir "${NODECFG_PATH}/kcwio/nodkcw/config"
    then
        printf "\\tUnable to create directory %s/kcwio/nodkcw/config.\\n" "${NODECFG_PATH}"
		printf "\\n\\tExiting now.\\n\\n"
		exit 1;
    fi
else

    printf "\\n\\tUnable to enter directory %s.\\n" "${NODECFG_PATH}"
	printf "\\n\\tExiting now.\\n\\n"
	exit 1;
fi

NODE_PATH=/home
printf "\\n\\tCreate node contracts directory.\\n"
if [ -d "$NODE_PATH" ]
then
    if ! mkdir "${NODE_PATH}/kcw"
    then
        printf "\\tUnable to create directory %s/kcw.\\n" "${NODE_PATH}"
		printf "\\n\\tExiting now.\\n\\n"
		exit 1;
    fi
else
    printf "\\n\\tUnable to enter directory %s.\\n" "${NODE_PATH}"
	printf "\\n\\tExiting now.\\n\\n"
	exit 1;
fi

printf "\\n\\tCopy node config.\\n"
if ! cp -r config.ini ${NODECFG_PATH}/kcwio/nodkcw/config/config.ini
then
        printf "\\tUnable to copy node config file.\\n"
		printf "\\n\\tExiting now.\\n\\n"
		exit 1;
fi

printf "\\n\\tCopy contracts dir.\\n"
if ! cp -r ${NODEINFO_PATH}/contracts ${NODE_PATH}/kcw/contracts
then
    printf "\\tUnable to copy contracts dir.\\n"
	printf "\\n\\tExiting now.\\n\\n"
	exit 1;
fi

#printf "\\n\\tStart node.\\n"
#nohup nodkcw --http-alias=serverIP:58888 &

#printf "\\n\\tStart node wallet.\\n"
#nohup kkcwd --http-alias=serverIP:58900 &

#printf "\\n\\tCreate node wallet.\\n"
#printf "\\n\\tCommand: clkcw -u http://127.0.0.1:58888  --wallet-url http://127.0.0.1:58900 wallet create -n walletName --to-console.\\n"
#WALLETRET=$(clkcw -u http://127.0.0.1:58888  --wallet-url http://127.0.0.1:58900 wallet create -n walletName --to-console)
#echo $WALLETRET

printf "\n\n"
printf "\t _    _   _______  _      _ _________ _______\n"
printf '\t| |  / / (  _____)| |    | |\__   __/(  ___  )\n'
printf "\t| | / /  | (      | |    | |   ) (   | (   ) |\n"
printf "\t| |/ /   | |      | |    | |   | |   | |   | |\n"
printf "\t| | /    | |      | | /\ | |   | |   | |   | |\n"
printf "\t| |\ \   | |      | |/  \| |   | |   | |   | |\n"
printf "\t| | \ \  | (_____ \   /\   /___) (___| (___) |\n"
printf "\t|_|  \_\ (_______) \_/  \_/ \_______/(_______)\n${txtrst}"

printf "\\n\\tNode successfully installed at /usr/local/kcwio/bin.\\n"