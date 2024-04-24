
# pull the Node.js Docker image
FROM node:alpine

# create the directory inside the container
WORKDIR /usr/src/app

# copy the package.json files from local machine to the workdir in container
ADD package.json ./
ADD yarn.lock ./

# run yarn install in our local machine
RUN yarn

# copy the generated modules and all other files to the container
ADD . .

RUN yarn build

# our app is running on port 3000 within the container, so need to expose it
EXPOSE 3000

# the command that starts our app
CMD ["yarn", "start"]