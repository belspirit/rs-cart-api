# Base
FROM node:12-alpine
WORKDIR /app

# Dependencies
COPY package*.json ./
RUN npm i

# Build
COPY . .
RUN npm run build

# Application
ENV PORT=8080
EXPOSE 8080
CMD ["node", "dist/main"]