FROM php:8.4-cli

WORKDIR /app

ARG GITHUB_TOKEN
ARG CACHEBUST
RUN apt-get update && apt-get install -y git unzip \
    && echo "Cloning repository with token: $GITHUB_TOKEN" \
    && git clone https://$GITHUB_TOKEN@github.com/diskoze/phpnab.git . \
    && rm -rf /var/lib/apt/lists/*

# Ensure the /data directory exists
RUN mkdir -p /app/data

COPY --chown=www-data:www-data .env.docker /app/.env


CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]