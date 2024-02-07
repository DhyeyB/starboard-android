FROM ubuntu:focal-20231211

RUN apt-get -qqy update && \
    apt dist-upgrade -y && \
    apt-get -qqy --no-install-recommends install \
    ca-certificates \
    curl \
    gnupg \
    libgconf-2-4 \
    libqt5webkit5 \
    openjdk-11-jdk \
    sudo \
    tzdata \
    unzip \
    wget \
    xvfb \
    zip \
  && rm -rf /var/lib/apt/lists/*

ENV NODE_VERSION=18
# ENV APPIUM_VERSION=2.3.0
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash && \
    apt-get -qqy install nodejs && \
    npm install -g appium && \
    exit 0 && \
    npm cache clean && \
    apt-get remove --purge -y npm && \
    apt-get autoremove --purge -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get clean

# ENV APPIUM_DRIVER_UIAUTOMATOR2_VERSION="2.37.0"
RUN appium driver install --source=npm appium-uiautomator2-driver

CMD [ "appium" ]