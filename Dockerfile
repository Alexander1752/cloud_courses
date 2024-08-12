FROM node:lts-alpine

WORKDIR /app/website

EXPOSE 3000

COPY --chown=node:node website/ /app/website

RUN chown node:node /app/website

USER node
RUN yarn install --audit
RUN yarn add @docusaurus/plugin-content-blog

CMD ["yarn", "run", "start", "--", "--host", "0.0.0.0"]
