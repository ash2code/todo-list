FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*.html
COPY . /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
