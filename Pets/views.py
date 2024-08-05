from django.shortcuts import render
from .models import Thing
from rest_framework.generics import ListAPIView,ListCreateAPIView,RetrieveAPIView,RetrieveUpdateAPIView,RetrieveUpdateDestroyAPIView
from .serializers  import ThingSerializer
from .permissions import IsOwnerOrReadOnly
from rest_framework.permissions import AllowAny,IsAuthenticated

# Create your views here.
class ThingListView(ListCreateAPIView):
    queryset=Thing.objects.all()
    serializer_class= ThingSerializer
    permission_classes = [IsAuthenticated]
class ThingDetailView(RetrieveUpdateDestroyAPIView):
    queryset=Thing.objects.all()
    serializer_class= ThingSerializer
    permission_classes = [IsOwnerOrReadOnly]