#!/bin/bash
asciidoctor -R src -D target '**/*.adoc' && \
rsync -av src/images blog:/var/www/html && \
rsync -av target/ blog:/var/www/html