#!/bin/bash

MONGOD_CONF=${HOME}/opt/mongodb/mongod.conf

printf "\\n\\tChecking MongoDB installation.\\n"
if [ ! -e "${MONGOD_CONF}" ]; then
		printf "\\n\\tInstalling MongoDB 3.6.3.\\n"
		if ! cd "${HOME}/opt"
		then
			printf "\\n\\tUnable to enter directory %s/opt.\\n" "${HOME}"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi
		STATUS=$(curl -LO -w '%{http_code}' --connect-timeout 30 https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.6.3.tgz)
		if [ "${STATUS}" -ne 200 ]; then
			printf "\\tUnable to download MongoDB at this time.\\n"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi
		if ! tar xf "${HOME}/opt/mongodb-linux-x86_64-3.6.3.tgz"
		then
			printf "\\tUnable to unarchive file %s/opt/mongodb-linux-x86_64-3.6.3.tgz.\\n" "${HOME}"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi
		if ! rm -f "${HOME}/opt/mongodb-linux-x86_64-3.6.3.tgz"
		then
			printf "\\tUnable to remove file %s/opt/mongodb-linux-x86_64-3.6.3.tgz.\\n" "${HOME}"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi
		if ! ln -s "${HOME}/opt/mongodb-linux-x86_64-3.6.3/" "${HOME}/opt/mongodb"
		then
			printf "\\tUnable to symbolic link %s/opt/mongodb-linux-x86_64-3.6.3/ to %s/opt/mongodb.\\n" "${HOME}" "${HOME}"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi
		if ! mkdir "${HOME}/opt/mongodb/data"
		then
			printf "\\tUnable to create directory %s/opt/mongodb/data.\\n" "${HOME}"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi
		if ! mkdir "${HOME}/opt/mongodb/log"
		then
			printf "\\tUnable to create directory %s/opt/mongodb/log.\\n" "${HOME}"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi
		if ! touch "${HOME}/opt/mongodb/log/mongodb.log"
		then
			printf "\\tUnable to create file %s/opt/mongodb/log/mongodb.log.\\n" "${HOME}"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi
        if ! tee > /dev/null "${MONGOD_CONF}" <<mongodconf
        systemLog:
        destination: file
        path: ${HOME}/opt/mongodb/log/mongodb.log
        logAppend: true
        logRotate: reopen
        net:
        port: 57777
        bindIp: 0.0.0.0,::57777
        ipv6: true
        storage:
        dbPath: ${HOME}/opt/mongodb/data
        security:
        authorization: enabled
mongodconf
		then
			printf "\\tUnable to write to file %s.\\n" "${MONGOD_CONF}"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi
	printf "\\n\\tMongoDB successfully installed at %s/opt/mongodb.\\n" "${HOME}"
else
	printf "\\tMongoDB configuration found at %s.\\n" "${MONGOD_CONF}"
fi

if ! ~/opt/mongodb/bin/mongod -f ~/opt/mongodb/mongod.conf --fork
then
    printf "\\n\\tMongod Start fail.\\n"
    exit 1;
fi

MONGO=${HOME}/opt/mongodb/bin/mongo
if [ ! -e "${MONGO}" ]
then
    printf "\\n\\tMongo not installed at %s/opt/mongodb/bin.\\n" "${HOME}"
    exit 1;
else
	printf "\\tCreate Mongo users \\n"
	if ! mongo 127.0.0.1:57777/admin --eval "db.createUser({user:\"username\",pwd:\"userPWD\",roles:[\"userAdminAnyDatabase\"]});"
	then
		printf "\\tCreate Mongo admin user fail \\n"
		printf "\\n\\tExiting now.\\n\\n"
		exit 1;
	fi
    if ! mongo 127.0.0.1:57777/KCW --eval "db.createUser({user:\"username\",pwd:\"userPWD\",roles:[\"readWrite\"]});"
	then
		printf "\\tCreate Mongo readwrite user fail \\n"
		printf "\\n\\tExiting now.\\n\\n"
		exit 1;
	fi
	if ! mongo 127.0.0.1:57777/KCW --eval "db.createUser({user:\"username\",pwd:\"userPWD\",roles:[\"read\"]});"
	then
		printf "\\tCreate Mongo read user fail \\n"
		printf "\\n\\tExiting now.\\n\\n"
		exit 1;
	fi
fi
