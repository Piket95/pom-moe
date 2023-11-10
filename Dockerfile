FROM node:lts-slim
WORKDIR /app
ADD . /app/
RUN git checkout priv-deploy
RUN npm install
RUN npm run build
RUN npm run preview
CMD [ "npm", "run", "preview" ]