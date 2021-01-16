FROM node:12-stretch

ENV TZ Asia/Tokyo
ENV DISCORD_TOKEN ${DISCORD_TOKEN}
ENV DISCORD_GUILD_ID ${DISCORD_GUILD_ID}
ENV DISCORD_SOURCE_CHANNEL_ID ${DISCORD_SOURCE_CHANNEL_ID}
ENV GOOGLE_APPLICATION_CREDENTIALS ${GOOGLE_APPLICATION_CREDENTIALS:-/helmholtz/.keys/sa-key.json}

COPY app.js package.json package-lock.json /helmholtz/
WORKDIR /helmholtz
RUN apt update && \
    apt install -y autoconf automake ffmpeg
RUN npm install
ENTRYPOINT ["node", "app.js"]