FROM ubuntu

RUN apt-get update && \
    apt-get install -y nginx
ADD mysite.html /var/www/html 

EXPOSE 80
WORKDIR /etc/nginx
CMD ["nginx", "-g", "daemon off;"]