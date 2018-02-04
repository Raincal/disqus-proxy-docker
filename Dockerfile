FROM php:7.2.1-apache

LABEL maintainer="Raincal <cyj94228@gmail.com>"

COPY ./disqus /var/www/html/

ENV DISQUS_EMAIL ""
ENV DISQUS_PASSWORD ""
ENV DISQUS_USERNAME ""
ENV DISQUS_WEBSITE ""
ENV DISQUS_SHORTNAME ""
ENV DISQUS_APPROVED true

ENV GFW_INSIDE false
ENV DISQUS_IP "151.101.0.134"
ENV DISQUS_MEDIAIP "151.101.24.64"

ENV GRAVATAR_CDN "//cn.gravatar.com/avatar/"
ENV GRAVATAR_DEFAULT "https://a.disquscdn.com/images/noavatar92.png"
ENV EMOJI_PATH "https://assets-cdn.github.com/images/icons/emoji/unicode/"

ENV SITE_NAME ""
ENV SMTP_SECURE "ssl"
ENV SMTP_HOST ""
ENV SMTP_PORT 465
ENV SMTP_USERNAME ""
ENV SMTP_PASSWORD ""