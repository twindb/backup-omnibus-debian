FROM debian:jessie
MAINTAINER Ovais Tariq @ovaistariq

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update
RUN apt-get install -y \
        git \
        curl \
        build-essential \
        libssl-dev \
        libreadline-dev \
        libxslt1-dev \
        libxml2-dev \
        libcurl4-openssl-dev \
        zlib1g-dev \
        libexpat1-dev \
        libicu-dev \
        gnupg2 \
        cmake

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable

RUN bash -c "source /etc/profile.d/rvm.sh; \
        rvm requirements; \
        rvm install 2.2.2 ; \
        gem install bundler --no-ri --no-rdoc;\
        "

RUN rm -rf /usr/local/rvm/src/ruby-2.2.2

CMD /bin/bash -l
