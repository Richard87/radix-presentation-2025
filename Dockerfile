FROM docker.io/library/node:23-alpine
RUN npm install --global serve

WORKDIR /app
COPY . .
RUN npm install -g serve
USER 1000
EXPOSE 3000
CMD ["serve", "."]