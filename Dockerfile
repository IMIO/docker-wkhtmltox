FROM python:3.7-stretch

RUN apt-get update && apt-get install -y \
    xfonts-75dpi \
    xfonts-base

WORKDIR /tmp

RUN wget -O wkhtmltox.deb "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb" && \
    dpkg -i wkhtmltox.deb && \
    rm wkhtmltox.deb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/tmp/*

CMD ["/bin/bash"]
