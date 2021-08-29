# pull official base image
FROM node:13.12.0-alpine

# set working directory
WORKDIR /app
# install app dependencies
COPY . ./app
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

# add app
COPY . ./

# start app
CMD ["npm", "start"]