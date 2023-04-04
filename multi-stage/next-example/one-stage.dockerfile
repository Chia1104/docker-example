FROM node:18-alpine AS deps

WORKDIR /app

COPY . .

ENV SKIP_ENV_VALIDATION=true

RUN apk add --no-cache libc6-compat && \
    yarn global add pnpm && \
    pnpm i && \
    pnpm prisma generate && \
    pnpm build

CMD ["node", "server.js"]