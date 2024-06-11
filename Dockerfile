FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY sign.crt /etc/nginx/ssl/sign.crt
COPY sign.key /etc/nginx/ssl/sign.key
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx-cors.conf /etc/nginx/conf.d/nginx-cors.conf
