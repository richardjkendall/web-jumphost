#!/bin/bash

echo "Running entrypoint script..."
if [ "$ALLOW_SUDO" = "yes" ]
then
	echo "SUDO is allowed"
	usermod -a -G sudo console
else
	echo "SUDO is not allowed"
fi

su - console

/sbin/tini -- $@
