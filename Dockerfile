From node:latest as bd
WORKDIR /code
COPY ./ /code
RUN yarn

From node:slim
WORKDIR /code
COPY --from=bd /code /code
CMD yarn start
