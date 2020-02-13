FROM tsl0922/ttyd

RUN apt-get -y update
RUN apt-get -y install openssh-client

RUN adduser console

USER console:console
