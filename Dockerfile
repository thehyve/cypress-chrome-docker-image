FROM cypress/browsers:chrome69
# 1003 is uid of bamboo user on the CI
RUN useradd -ms /bin/bash -u 1003 bamboo
USER bamboo
WORKDIR /home/bamboo
COPY package.json /home/bamboo/
RUN npm install
ENV PATH="/home/bamboo/node_modules/.bin/:${PATH}"
