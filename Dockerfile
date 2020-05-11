From node:latest as bd
WORKDIR /code
COPY ./ /code
RUN yarn

From node:latest
WORKDIR /code
COPY --from=bd /code /code
CMD yarn start
