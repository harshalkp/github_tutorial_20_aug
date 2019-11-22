FROM ubuntu:16.04

RUN RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "api.py" ]