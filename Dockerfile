FROM node:lts-alpine

WORKDIR /app/home_page

RUN apk update && \
    npm install -g npm @vue/cli

#RUN npm run build

EXPOSE 8080

CMD ["npm","run","serve"]
