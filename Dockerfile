# base stage
FROM node:lts-alpine as base
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# development stage
FROM base as development
EXPOSE 8080
CMD ["npm", "run", "dev"]
