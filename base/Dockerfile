# plese do this command
# $ git clone gentoo/gentoo-docker-images
# $ docker build . -t host/gentoo
FROM gentoo/stage3-amd64
MAINTAINER test

RUN emerge-webrsync

RUN emerge cpuid2cpuflags

# Edit make.conf for the computer
RUN sed -e '/CFLAGS/d' /etc/portage/make.conf >> /etc/portage/make.conf.m
RUN sed -e '/CPU_FLAGS_X86/d' /etc/portage/make.conf.m >> /etc/portage/make.conf.m2
RUN echo "" > /etc/portage/make.conf
RUN cat /etc/portage/make.conf.m2 >> /etc/portage/make.conf
RUN echo `cpuinfo2cpuflags-x86` >> /etc/portage/make.conf
RUN echo 'CFLAGS="-O2 -march=native -pipe"' >> /etc/portage/make.conf
RUN rm /etc/portage/make.conf.m
RUN rm /etc/portage/make.conf.m2
RUN emerge --sync
RUN emerge -uDNj world


WORKDIR /
CMD ["bash"]


