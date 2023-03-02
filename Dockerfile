FROM node

WORKDIR /usr/fabian-nextjs-app

COPY package*.json /usr/fabian-nextjs-app

RUN npm install

COPY . /usr/fabian-nextjs-app

RUN npm run build

COPY . /usr/fabian-nextjs-app

EXPOSE 3000

ENTRYPOINT ["npm", "run", "start"]