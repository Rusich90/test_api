from django.contrib import admin

from app.models import Employee
from app.models import Outlet
from app.models import Visit


@admin.register(Employee)
class EmployeeAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'phone_number')

    search_fields = ('name',)

    fields = ('id', 'name', 'phone_number')

    readonly_fields = ('id',)


@admin.register(Outlet)
class OutletAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'employee')

    search_fields = ('name',)

    fields = ('id', 'name', 'employee')

    readonly_fields = ('id',)

    def get_queryset(self, request):
        queryset = Outlet.objects.select_related('employee').all()
        return queryset


@admin.register(Visit)
class VisitAdmin(admin.ModelAdmin):
    list_display = ('id', 'datetime', 'outlet', 'employee', 'latitude', 'longitude')

    search_fields = ('outlet__name', 'outlet__employee__name')

    fields = ('id', 'datetime', 'outlet', 'employee', 'latitude', 'longitude')

    def get_queryset(self, request):
        queryset = Visit.objects.select_related('outlet', 'outlet__employee').all()
        return queryset

    def employee(self, obj):
        return obj.outlet.employee

    def has_add_permission(self, request, obj=None):
        return False

    def has_delete_permission(self, request, obj=None):
        return False

    def has_change_permission(self, request, obj=None):
        return False
