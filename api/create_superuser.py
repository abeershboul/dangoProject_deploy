import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'myproject.settings')
django.setup()

from django.contrib.auth.models import User

def handler(request):
    User.objects.create_superuser('admin', 'admin@example.com', 'password')
    return {
        'statusCode': 200,
        'body': 'Superuser created successfully.'
    }
