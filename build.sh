#!/usr/bin/env bash
set -o errexit  # Exit on error

pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py createsuperuser
python manage.py migrate
CMD =["gunicorn", "--bind", "0.0.0.0:8000", "Pet_project.wsgi:application"]
# myapp/views.py
from django.http import HttpResponse
from django.core.management import call_command

def create_superuser_view(request):
    if not User.objects.filter(username='admin').exists():
        call_command('createsuperuser', username='admin', email='admin@example.com', password='password')
    return HttpResponse("Superuser created")
