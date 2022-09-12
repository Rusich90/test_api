from django.utils.decorators import method_decorator
from drf_yasg.utils import swagger_auto_schema
from rest_framework.generics import CreateAPIView
from rest_framework.generics import ListAPIView
from rest_framework.permissions import IsAuthenticated

from app.models import Outlet
from app.models import Visit
from app.serializers import OutletListSerializer
from app.serializers import VisitCreateSerializer
from app.serializers import VisitResponseSerializer


@method_decorator(name='get', decorator=swagger_auto_schema(tags=['Outlet']))
class OutletListView(ListAPIView):
    """
    get:
    Return a list of employee's outlets

    Return a list of employee's outlets
    """
    queryset = Outlet.objects.all()
    serializer_class = OutletListSerializer
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):
        queryset = self.queryset.filter(employee=self.request.user)
        return queryset


@method_decorator(name='post', decorator=swagger_auto_schema(tags=['Visit'], responses={200: VisitResponseSerializer}))
class VisitCreateView(CreateAPIView):
    """
    post:
    Create new Visit

    Create new Visit
    """
    queryset = Visit.objects.all()
    serializer_class = VisitCreateSerializer
    permission_classes = (IsAuthenticated,)
