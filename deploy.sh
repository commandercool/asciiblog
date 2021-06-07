#!/bin/bash
asciidoctor -R src -D target '**/*.adoc' && \
rsync -av -e "ssh -l ubuntu" src/images blog:/var/www/html && \
rsync -av -e "ssh -l ubuntu" target/ blog:/var/www/html