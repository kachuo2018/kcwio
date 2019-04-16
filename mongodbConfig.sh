#!/bin/bash

MONGOD_CONF=/etc/mongodb.conf

printf "\\n\\tChecking MongoDB installation.\\n"
if [ ! -e "${MONGOD_CONF}" ]; then
		printf "\\n\\tInstalling MongoDB \\n"
		if ! sudo apt-get update
		then
			printf "\\n\\tUnable to apt-get update.\\n"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi
		if ! sudo apt-get install mongodb
		then
			printf "\\n\\tUnable to installing MongoDB.\\n"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi

		printf "\\n\\tStart mongodb\\n"
		if ! service mongodb start
		then
		printf "\\n\\tMongodb start fail.\\n"
		exit 1;
		fi

		printf "\\n\\tStop mongodb\\n"
		if ! service mongodb stop
		then
		printf "\\n\\tMongodb stop fail.\\n"
		exit 1;
		fi

		if ! cat << EOF >${MONGOD_CONF}
		# mongodb.conf

		dbpath=/var/lib/mongodb

		logpath=/var/log/mongodb/mongodb.log

		logappend=true

		bind_ip = 0.0.0.0

		port = 57777

		journal=true

		auth = true
EOF
    	then
			printf "\\tUnable to write to file ${MONGOD_CONF}.\\n"
			printf "\\n\\tExiting now.\\n\\n"
			exit 1;
		fi
	printf "\\n\\tMongoDB successfully installed at %s/opt/mongodb.\\n" "${HOME}"
else
	printf "\\tMongoDB configuration found at %s.\\n" "${MONGOD_CONF}"
fi

printf "\\n\\tStart mongodb\\n"
if ! service mongodb start
then
printf "\\n\\tMongodb start fail.\\n"
exit 1;
fi
