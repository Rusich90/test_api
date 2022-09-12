import logging

from django.conf import settings
from rest_framework import authentication
from rest_framework import exceptions

from app.models import Employee

logger = logging.getLogger('app')


class CustomAuthentication(authentication.BaseAuthentication):

    def authenticate(self, request):
        auth_key = request.META.get('HTTP_AUTHORIZATION')
        if not auth_key:
            raise exceptions.AuthenticationFailed('Phone number not provided')

        current_employee = Employee.objects.filter(phone_number=auth_key).first()
        if not current_employee:
            raise exceptions.AuthenticationFailed('No employee with this phone number')

        user = current_employee
        user.is_authenticated = True
        return user, None
