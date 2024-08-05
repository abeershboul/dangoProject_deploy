import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'myproject.settings')
django.setup()

from django.core.management import call_command

def handler(request):
    call_command('migrate')
    return {
        'statusCode': 200,
        'body': 'Migrations applied successfully.'
    }
