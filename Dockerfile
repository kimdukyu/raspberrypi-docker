FROM ubuntu:20.04 as base

ARG USERNAME=rpi4yocto
#ARG PASSWORD=rpi4
ARG GITDIR=/home/${USERNAME}/test/rpi4_yocto

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y git

# Set Default User
RUN useradd -ms /bin/bash ${USERNAME}

# Set Timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

USER ${USERNAME}
WORKDIR /home/${USERNAME}
ENV LANG=C.UTF-8
CMD /bin/bash
