FROM python:3
ENV BUILDKIT_PROGRESS=plain
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirments.txt /code/
RUN pip install -r requirments.txt
COPY . /code/