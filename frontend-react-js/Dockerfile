FROM node:16.18

WORKDIR /frontend-react-js

COPY . /frontend-react-js

# while building the image
RUN npm install

EXPOSE ${PORT}

CMD ["npm", "start"]