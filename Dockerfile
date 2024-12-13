FROM python:3.8-slim

RUN pip install --no-cache-dir \
    kopf==0.28 \
    kubernetes \
    python-json-logger==0.1.11

ADD . /src

CMD kopf run /src/handlers.py
