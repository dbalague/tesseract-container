# tesseract-container

Dockerfile for creating an Ubuntu container with tesseract-ocr for text recognition in Catalan, Dutch, English, and Spanish.

# Building and Using the Container

To build the container use the command

```bash
docker build -t tesseract /path/to/dockerfile/
```

To use it, remember that the container has a user called "tesseract". Run the container with the command

```bash
docker run -v /your/directory/with/images:/home/tesseract -t -i tesseract
```

This will share your local directory with the files you want to scan with tesseract with the container in the user's home directory.

# References

![Tesseract-ocr](https://github.com/tesseract-ocr/tesseract)
