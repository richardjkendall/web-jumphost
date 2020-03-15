FROM tsl0922/ttyd

# install basics
RUN apt-get update
RUN apt-get -y install openssh-client zsh curl git python3-pip nano sudo

# add non-root user and switch
RUN adduser console
RUN echo "console ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/99_console
USER console

# install oh-my-zsh and configure
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN echo "RPROMPT=\"[%t]\"" >> /home/console/.zshrc
RUN echo "export PATH=$HOME/.local/bin:$PATH" >> /home/console/.zshrc

# install aws CLI
RUN pip3 install awscli --upgrade --user

# set command
CMD ["ttyd", "zsh"]

# copy in entrypoint
#COPY entrypoint.sh /entrypoint.sh
#ENTRYPOINT "/entrypoint.sh"


