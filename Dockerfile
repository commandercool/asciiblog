FROM asciidoctor/docker-asciidoctor:1.6.1
WORKDIR /blog
COPY . .
RUN asciidoctor -R src -D target '**/*.adoc'

FROM nginx:1.20.0-alpine
COPY --from=0 /blog/target /usr/share/nginx/html
COPY --from=0 /blog/src/images /usr/share/nginx/html/images
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]