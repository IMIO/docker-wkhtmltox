This repository contains a dockerized version of **wkhtmltopdf** and **wkhtmltoimage**.

The image is based on a Python 3 official image, so it can be derived easily for scripts.


#### Usefulness

wkhtmltopdf and wkhtmltoimage are command line tools to render HTML into PDF or images using the Qt WebKit rendering engine. They are run entirely "headless" and do not require a display or display service.


#### Why dockerize it ?

It's a capricious program, which on Ubuntu must be preferentially installed with a .deb package.

When installed thru `apt-get`, various encoding errors appear.


#### Usage

```shell script
docker run --rm -v /tmp:/tmp wkhtmltox wkhtmltopdf /tmp/document.html /tmp/document.pdf

echo "Content of the picture" | docker run --rm -v /tmp:/tmp -i wkhtmltox wkhtmltoimage --encoding utf-8 - /tmp/piped.jpg
```


#### References:

- https://wkhtmltopdf.org/downloads.html
- https://github.com/wkhtmltopdf/wkhtmltopdf/releases