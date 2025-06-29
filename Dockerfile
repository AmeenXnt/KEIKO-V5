FROM node:20

RUN apt-get update && \
    apt-get install -y \
    ffmpeg \
    imagemagick \
    webp && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/AmeenXnt/KEIKO-V5.git /keiko
WORKDIR /keiko
RUN yarn install
CMD ["npm", "start"]

