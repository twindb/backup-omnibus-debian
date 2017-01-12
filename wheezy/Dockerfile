FROM debian:wheezy
MAINTAINER Ovais Tariq @ovaistariq

RUN apt-get update && apt-get install -y \
    git \
    curl \
    autoconf \
    binutils-doc \
    bison \
    flex \
    gettext \
    ncurses-dev \
    rsync \
    libyaml-dev \
    ccache \
    devscripts \
    dpkg-dev \
    fakeroot \
    build-essential \
    ruby1.9.1-full \
    libssl-dev \
    libreadline-dev \
    libxslt1-dev \
    libxml2-dev \
    libcurl4-openssl-dev \
    zlib1g-dev \
    libexpat1-dev \
    libicu-dev \
    unzip \
    m4 \
    cmake

RUN gem install bundler --no-ri --no-rdoc

RUN git config --global user.email "packager@twindb.com" && \
    git config --global user.name "TwinDB Packager (TwinDB packager key)"

RUN git clone https://github.com/twindb/backup.git && \
    cd backup/omnibus && \
    bundle install --binstubs
