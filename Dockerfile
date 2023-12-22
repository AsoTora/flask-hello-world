FROM python:3.10-alpine

WORKDIR /code
COPY . .
COPY requirements.txt requirements.txt

RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
    && pip install --no-cache-dir -r requirements.txt \
    && apk del .build-deps

ENV FLASK_APP=flask.app
ENV FLASK_ENV=development
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=8080

EXPOSE 8080

CMD ["flask","run"]