FROM node:14.18.1

WORKDIR /app

COPY package.json ./

COPY package-lock.json ./

RUN npm install

COPY . ./

CMD ["npm", "start"]

# docker build -t registration-app .
# docker run -it -p 3010:3000 registration-app
# 3010 - port which we can use to access application via docker | 3000 - port application is running on
# docker exec -it 25f519b64555 /bin/sh | docker exec -it 25f519b64555 sh

# docker commit container_id user_name/
# docker push container_name