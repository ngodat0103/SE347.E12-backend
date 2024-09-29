FROM node:18-alpine AS base

FROM base AS deps
RUN apk add --no-cache libc6-compat
WORKDIR /deps
COPY package.json yarn.lock* package-lock.json* pnpm-lock.yaml* ./
RUN npm ci

FROM base AS builder
WORKDIR /build
COPY --from=deps /deps/node_modules ./node_modules
COPY . .
RUN npm run build
RUN npm ci --only=production && npm cache clean --force

FROM base AS runner
WORKDIR /run
ENV NODE_ENV production
COPY --from=builder --chown=node:node --chmod=500 /build/node_modules/ ./node_modules
COPY --from=builder --chown=node:node --chmod=500 /build/dist/ ./dist
EXPOSE 5000
WORKDIR /run/dist
ENTRYPOINT ["node", "main.js"]