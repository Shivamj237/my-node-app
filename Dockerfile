FROM node:lts-alpine3.20
WORKDIR /myapp
COPY package*.json /myapp
RUN npm install
COPY . .
#RUN npm run build
EXPOSE 3000
CMD [ "npm","start" ]