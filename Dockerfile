FROM node:lts-slim
WORKDIR /app
ADD . /app/

# install git
RUN apt-get update && apt-get install -y git

RUN git checkout priv-deploy
RUN npm install
RUN npm run build

EXPOSE 80

CMD [ "npm", "run", "preview" ]