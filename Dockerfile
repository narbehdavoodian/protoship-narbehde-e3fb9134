FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html.template
CMD ["/bin/sh", "-c", "envsubst '${test}' < /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html && nginx -g 'daemon off;'"]
EXPOSE 80
