# Base image olarak Nginx kullanıyoruz
FROM nginx:alpine

# Nginx default web dizinine index.html ve diğer dosyaları kopyala
COPY ./index.html /usr/share/nginx/html/index.html


# Nginx default port
EXPOSE 80

# Nginx'i foreground modda başlat
CMD ["nginx", "-g", "daemon off;"]
