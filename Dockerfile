FROM node:alpine
MAINTAINER etherfoundry

# http
EXPOSE 8080
# telnet
EXPOSE 8081

# persistent data storage - map to host if desired
VOLUME ["/phant_streams"]

ENV NODE_ENV production
RUN npm install -g https://github.com/etherfoundry/phant/tarball/master

CMD ["phant"]
