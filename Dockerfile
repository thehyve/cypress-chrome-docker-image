FROM cypress/browsers:chrome69
RUN npm i cypress@2.1.0
RUN npm i cypress-cucumber-preprocessor@0.6.0
RUN $(npm bin)/cypress run --browser chrome
