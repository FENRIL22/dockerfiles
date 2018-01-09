# please do thid command
# $ docker build . -t host/pantex

FROM fenril22/gentoo-opt
MAINTAINER fenril22

ADD latex /etc/portage/package.use/

RUN emerge sandbox
RUN emerge -j texlive
RUN emerge -j pandoc
