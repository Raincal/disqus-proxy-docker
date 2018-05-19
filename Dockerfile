FROM php:7.2.5-apache

LABEL maintainer="Raincal <cyj94228@gmail.com>"

COPY ./disqus/api /var/www/html/

ENV PUBLIC_KEY ""
ENV SECRET_KEY ""
ENV DISQUS_EMAIL ""
ENV DISQUS_PASSWORD ""
ENV DISQUS_USERNAME ""
ENV DISQUS_WEBSITE ""
ENV DISQUS_SHORTNAME ""
ENV DISQUS_APPROVED true

ENV GRAVATAR_CDN "//cn.gravatar.com/avatar/"
ENV EMOJI_PATH "https://assets-cdn.github.com/images/icons/emoji/unicode/"

ENV SMTP_SECURE "ssl"
ENV SMTP_HOST ""
ENV SMTP_PORT 465
ENV SMTP_USERNAME ""
ENV SMTP_PASSWORD ""
ENV SMTP_FROM ""
ENV SMTP_FROMNAME ""