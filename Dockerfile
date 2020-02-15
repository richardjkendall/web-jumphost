FROM tsl0922/ttyd

# install basics
RUN apt-get -y update
RUN apt-get -y install openssh-client zsh curl git python3-pip nano 
#tzdata

# change timezone, does not work yet
#RUN export DEBIAN_FRONTEND=noninteractive
#RUN echo "Australia/Melbourne" > /etc/timezone
#RUN dpkg-reconfigure --frontend noninteractive tzdata

# add non-root user and switch
RUN adduser console
USER console:console

# install oh-my-zsh and configure
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN echo "RPROMPT=\"[%t]\"" >> /home/console/.zshrc

# install aws CLI
RUN pip3 install awscli --upgrade --user

CMD ["ttyd", "zsh"]

