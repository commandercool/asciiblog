#!/bin/bash

asciidoctor -R src -D target '**/*.adoc' && \
cp -r src/images target/images