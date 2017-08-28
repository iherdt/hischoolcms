FROM node:4.8.0

WORKDIR /app

ADD package.json /app/package.json
RUN npm install

ADD . /app

ENV SERVER_URL http://hischool.today/1
ENV PUBLIC_SERVER_URL http://hischool.today/1
ENV PARSE_MOUNT /1
ENV APP_NAME hischoolapp

# Generate a ramdom App ID and Master Key here
# http://www.unit-conversion.info/texttools/random-string-generator/
# Don't forget to update the App ID in the mobile app.
# It should be the same for both app and cms.

ENV APP_ID 444c636e
ENV MASTER_KEY 9QK8pBHZdnoaYvXL
# ENV DATABASE_URI mongodb://hischoolappdb:eadb905b2fe33a38b664d37b3af47fb2@dokku-mongo-hischoolappdb:27017/hischoolappdb

ENV MAILGUN_API_KEY key-5581aabf6fcb7790c9b09734e0c67bec
ENV MAILGUN_DOMAIN hischool.today
ENV MAILGUN_FROM_ADDRESS 'H!School App <info@hischool.today>'
ENV MAILGUN_TO_ADDRESS 'H!School App <info@hischool.today>'

# Uncomment the line below you want to use New Relic
# to monitor your web app.
ENV NEW_RELIC_LICENSE_KEY f0ed223f3bea1ac003cdef781c000ae41213500f

CMD [ "npm", "start" ]

