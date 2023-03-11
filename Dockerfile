FROM node:16

# set working directory
WORKDIR /app

# copy package.json and package-lock.json
COPY package*.json ./

# install dependencies
RUN npm install --only=production
RUN npm install nodemon -g

# copy application files
COPY . .

# expose port
EXPOSE 3000

# start application
CMD ["npm", "run", "dev"]
