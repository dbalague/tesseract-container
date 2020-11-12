FROM ubuntu:18.04

LABEL maintainer="Daniel Balague <danielbalague@gmail.com>"

RUN apt-get -qq update && \
    apt-get -qq install tesseract-ocr tesseract-ocr-nld  \
        tesseract-ocr-cat tesseract-ocr-eng \
        tesseract-ocr-spa && \
    apt-get -qq clean && \
    rm -r /var/lib/apt/lists/* && \
    useradd -ms /bin/bash tesseract

WORKDIR /home/tesseract

USER tesseract