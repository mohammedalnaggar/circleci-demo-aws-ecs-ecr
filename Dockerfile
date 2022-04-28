# build environment
FROM node:15.4 as build

WORKDIR /app

COPY package*.json /app/
RUN npm install 
COPY . ./
EXPOSE 80
CMD ["npm", "run", "start"]

# # production environment
# FROM nginx:1.19

# COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
# COPY --from=build /app/build /usr/share/nginx/html
