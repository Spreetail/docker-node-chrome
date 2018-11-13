FROM node

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub |  apt-key add -
RUN echo deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main |  tee /etc/apt/sources.list.d/google-chrome.list
RUN apt-get update
RUN apt-get install google-chrome-stable -y
RUN npm -g config set user root
RUN npm install -g node-sass@4.9.3
RUN npm install -g puppeteer@1.8.0
