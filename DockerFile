FROM cypress/base:10
WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install --save-dev cypress

RUN $(npm bin)/cypress verify

COPY cypress cypress
COPY cypress.json .


RUN $(npm bin)/cypress