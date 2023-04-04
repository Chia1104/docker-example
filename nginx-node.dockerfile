FROM nginx:alpine

RUN echo "Nginx"

FROM node:18-alpine

CMD echo "Node"