import uuid

from django.db import models


class Employee(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=255)
    phone_number = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class Outlet(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=255)
    employee =  models.ForeignKey(Employee, on_delete=models.DO_NOTHING, related_name='outlets')

    def __str__(self):
        return self.name


class Visit(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    datetime = models.DateTimeField(auto_now_add=True)
    outlet = models.ForeignKey(Outlet, on_delete=models.DO_NOTHING, related_name='visits')
    latitude = models.FloatField()
    longitude = models.FloatField()
