from django.urls import path

from . import views

app_name = 'infra_codigo'
urlpatterns = [
    path('', views.index, name="index"),
]
