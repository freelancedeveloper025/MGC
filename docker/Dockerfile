FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="Mgc Developers <dev@mgc.org>"
LABEL description="Dockerised MgcCore, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /mgc

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} mgc
RUN useradd -u ${USER_ID} -g mgc -s /bin/bash -m -d /mgc mgc
RUN mkdir /mgc/.mgccore
RUN chown mgc:mgc -R /mgc

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER mgc

VOLUME ["/mgc"]

EXPOSE 9998 9999 19998 19999

WORKDIR /mgc
