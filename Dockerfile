From node:latest as bd
workdir /code
COPY ./ /code
RUN yarn

From node:latest

COPY --from=bd /code /code
CMD yarn start
