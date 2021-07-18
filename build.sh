#!/bin/bash

asciidoctor -R src -D target '**/*.adoc' && \
mkdir -p target/images && \
cp -r src/images target
