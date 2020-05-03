FROM buildpack-deps:jessie-scm

RUN set -x \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google.list \
    && apt-get update \
    && apt-get install -y \
        nodejs \
        xvfb \
        google-chrome-stable \
        bzip2 \
        curl \
        python \
        python-dev \
        python-setuptools \
        build-essential \
        libssl-dev \
        libffi-dev \
        unzip
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && easy_install pip \
    && pip install ansible boto boto3 awscli \

ADD package.json /usr/lib/node_modules/
WORKDIR /usr/lib/node_modules/

ADD scripts/xvfb-chrome /usr/bin/xvfb-chrome
RUN ln -sf /usr/bin/xvfb-chrome /usr/bin/google-chrome \
    && npm install

ENV CHROME_BIN /usr/bin/google-chrome

USER root

CMD ["node", "server.js"]

