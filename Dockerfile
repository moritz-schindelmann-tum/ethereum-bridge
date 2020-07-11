FROM node:10

COPY config ./config/
COPY contracts/ ./contracts/
COPY database/ ./database/
COPY lib/ ./lib/
COPY bridge.js ./
COPY check_update.js ./
COPY ethereum-bridge ./
COPY ethereum-bridge.cmd ./
COPY package*.json ./
COPY shrinkwrap.yaml ./
COPY utility.js ./
COPY start-eth-bridge.sh ./
RUN chmod ugo+rwx start-eth-bridge.sh

RUN npm install