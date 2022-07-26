FROM fusuf/whatsasena:latest

RUN git clone https://github.com/umardevil/devilbot  /Umar/devilbot

WORKDIR /Umar/devilbot

ENV TZ=Pakistan/Rawalpindi

RUN npm install

RUN npm install supervisor -g
RUN yarn install --ignore-engines
CMD ["node", "index.js"]
