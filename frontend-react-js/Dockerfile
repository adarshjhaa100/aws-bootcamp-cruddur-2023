FROM node:16.18

WORKDIR /frontend-react-js

COPY . .

# while building the image
RUN npm install

EXPOSE ${PORT}

CMD ["npm", "start"]