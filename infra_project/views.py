from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'infra_project/templates/infra_codigo/index.html')