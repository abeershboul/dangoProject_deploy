#!/usr/bin/env bash
set -o errexit  # Exit on error

pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py createsuperuser
python manage.py migrate
# CMD =["gunicorn", "--bind", "0.0.0.0:8000", "Pet_project.wsgi:application"]