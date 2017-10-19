FROM php:7.1.10-apache

LABEL maintainer="Raincal <cyj94228@gmail.com>"

COPY ./disqus /var/www/html/

WORKDIR /var/www/html

ENV DISQUS_EMAIL DISQUS_EMAIL
ENV DISQUS_PASSWORD DISQUS_PASSWORD
ENV DISQUS_USERNAME "Raincal"
ENV DISQUS_WEBSITE "https://raincal.top"
ENV DISQUS_SHORTNAME "raincal"
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