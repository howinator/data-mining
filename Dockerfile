FROM python:3.7.1-slim

RUN apt-get update && \
        apt-get -y install make pandoc texlive-xetex

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD /bin/bash
