# FROM python:3
# ENV BUILDKIT_PROGRESS=plain
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1
# RUN mkdir /code
# WORKDIR /code
# COPY requirements.txt /code/
# RUN pip install -r requirements.txt
# COPY . /code/
# # ENTRYPOINT [ "gunicorn", "Pet_project.wsgi", "-b", "0.0.0.0:8000"]
# RUN python manage.py collectstatic --noinput
# # ENTRYPOINT [ "gunicorn", "Pet_project.wsgi", "-b", "0.0.0.0:8000"]
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "Pet_project.wsgi:application"]

# # FROM python:3
# # WORKDIR /app

# # ENV PYTHONUNBUFFERED 1
# # ENV PYTHONDONTWRITEBYTECODE 1

# # # install system dependencies
# # RUN apt-get update

# # # install dependencies
# # RUN pip install --upgrade pip
# # COPY ./requirments.txt /app/
# # RUN pip install -r requirments.txt

# # COPY . /app

# # ENTRYPOINT [ "gunicorn", "core.wsgi", "-b", "0.0.0.0:8000"]