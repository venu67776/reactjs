# pull official base image
FROM node:13.12.0-alpine

# set working directory
WORKDIR /app
# install app dependencies
COPY . ./app
RUN npm install
RUN npm run build

# add app
COPY . ./app

# start app
CMD ["npm", "start"]