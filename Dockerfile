FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV MONGODB_URI=mongodb://mongo/notesdb
ENV PORT=4000
ENV NODE_ENV=development

EXPOSE 4000

CMD [ "npm", "run", "dev" ]
