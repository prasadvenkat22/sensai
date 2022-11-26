from rest_framework import serializers

from rest_framework.serializers import ModelSerializer, ReadOnlyField
from django.contrib.auth.models import User, Group
from .models import (
    Categories,Services,Manager,Client,Comment,Product,Device,DeviceUsers,Document
)

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['url', 'username','email', 'first_name', 'last_name', 
        'password', 'is_superuser']

# class GroupSerializer(serializers.ModelSerializer):
    
#     class Meta:
#         model = Group
#         fields = ['url', 'name']
         
class CategoriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Categories
        fields = ( '__all__')
class ServicesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Services
        fields = ( '__all__')
class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = ( '__all__')
class DeviceSerializer(serializers.ModelSerializer):
   # UserAccount = serializers.PrimaryKeyRelatedField(many=True, read_only=True)
    class Meta:
        model = Device
        fields = ( '__all__')
        #In case you want to filter out some fields:
        #fields = ('field_A','field_B' )
       # depth = 1

class DeviceUsersSerializer(serializers.ModelSerializer):
    id = serializers.ReadOnlyField(source='Device.id')
    name = serializers.ReadOnlyField(source='User.username')

    class Meta:
        model = DeviceUsers
        fields = ( '__all__')

class ManagerSerializer(serializers.ModelSerializer):
   # UserAccount = serializers.PrimaryKeyRelatedField(many=True, read_only=True)
    class Meta:
        model = Manager
        fields = ( '__all__')
class ClientSerializer(serializers.ModelSerializer):
    class Meta:
        model = Client
        fields = ('__all__')
class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = ( '__all__')

class DocumentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Document
        fields = "__all__"
