# Dockerfile
FROM node:alpine
RUN npm install -g serve

# Create app directory
RUN mkdir -p /opt/app/build
WORKDIR /opt/app

# copy bundled app source
COPY build /opt/app/build

# define envs
ENV PORT 9000
ENV API_HOST https://myapi.test
ENV NODE_ENV production

EXPOSE 9000

CMD [ "serve", "-s", "--port=9000", "/opt/app/build" ]
