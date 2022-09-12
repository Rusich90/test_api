from django.urls import path

from app.views import OutletListView
from app.views import VisitCreateView

urlpatterns = [
    path('outlets/', OutletListView.as_view()),
    path('visits/', VisitCreateView.as_view()),
]
