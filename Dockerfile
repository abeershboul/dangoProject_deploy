# FROM python:3
# ENV BUILDKIT_PROGRESS=plain
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1
# RUN mkdir /code
# WORKDIR /code
# COPY requirments.txt /code/
# RUN pip install -r requirments.txt
# COPY . /code/
# ENTRYPOINT [ "gunicorn", "core.wsgi", "-b", "0.0.0.0:8000"]

FROM python:3.11.4-slim-bullseye
WORKDIR /app

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# install system dependencies
RUN apt-get update

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "gunicorn", "core.wsgi", "-b", "0.0.0.0:8000"]