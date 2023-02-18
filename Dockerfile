FROM php:8.1.0-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    nginx \
    python3 \
    build-essential \
    locales \
    vim \
    git \
    wget \
    curl

# Install extensions
RUN pecl channel-update pecl.php.net
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# =============================================================================
# Project workspace
# =============================================================================
WORKDIR /app
COPY nginx.conf /etc/nginx/conf.d/mdas.conf
COPY --chown=www-data . .

# Preparing composer
RUN composer install

# Link project to nginx
RUN rm -rf /usr/share/nginx/html; \
    ln -s /app/public /usr/share/nginx/html; \
    chown -R www-data:www-data /usr/share/nginx/html; \
    chown -R www-data:www-data /app

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Expose port 8000 and start nginx & php-fpm services
EXPOSE 8000
CMD ["sh", "-c", "service nginx start ; php-fpm"]
