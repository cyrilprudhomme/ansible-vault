FROM node:latest
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --omit=dev
RUN npm install
COPY . .
CMD [ "npm", "run", "start" ]