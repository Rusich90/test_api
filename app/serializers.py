from rest_framework import serializers

from app.models import Outlet
from app.models import Visit


class OutletListSerializer(serializers.ModelSerializer):

    class Meta:
        model = Outlet
        fields = ('id', 'name')


class VisitResponseSerializer(serializers.ModelSerializer):

    class Meta:
        model = Visit
        fields = ('id', 'datetime',)


class VisitCreateSerializer(serializers.ModelSerializer):

    class Meta:
        model = Visit
        fields = ('outlet', 'latitude', 'longitude')

    def to_representation(self, instance):
        serializer = VisitResponseSerializer(instance)
        return serializer.data

    def validate_outlet(self, outlet):
        if outlet.employee != self.context['request'].user:
            raise serializers.ValidationError(f'You don"t have permission to create visit for this outlet')
        return outlet
