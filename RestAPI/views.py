from django.shortcuts import render
from rest_framework import viewsets
from .models import Client,Comment,Device
from .models import Categories,Services,Manager,Client,Comment,Product,Document
from django.contrib.auth.models import User, Group
from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated
from django.contrib.auth import views as auth_views
from rest_framework.authentication import TokenAuthentication #SessionAuthentication, BasicAuthentication
from rest_framework.parsers import FileUploadParser
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework import status
import os
import pickle
import numpy as np
import pandas as pd
from sklearn import datasets
from django.conf import settings
from rest_framework import views
from rest_framework import status
from rest_framework.response import Response
from sklearn.ensemble import RandomForestClassifier



from .serializers   import (
ClientSerializer,DeviceSerializer,DeviceUsersSerializer, 
CommentSerializer,ServicesSerializer,ProductSerializer,
CategoriesSerializer,ManagerSerializer,
UserSerializer,DocumentSerializer
#GroupSerializer
)
#,BookMarkSerializer
import os
import pickle
import numpy as np
import pandas as pd
#from sklearn import datasets
from django.conf import settings
from rest_framework import views
from rest_framework import status
from rest_framework.response import Response
#from sklearn.ensemble import RandomForestClassifier


class ProductView(viewsets.ModelViewSet):
      queryset = Product.objects.all()
      serializer_class = ServicesSerializer

class DeviceView(viewsets.ModelViewSet):
      queryset = Device.objects.all()
      serializer_class = DeviceSerializer
class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer


# class GroupViewSet(viewsets.ModelViewSet):
#     """
#     API endpoint that allows groups to be viewed or edited.
#     """
#     queryset = Group.objects.all()
#     serializer_class = GroupSerializer

class DeviceUsersView(viewsets.ModelViewSet):
      queryset = User.objects.all()
      serializer_class = DeviceUsersSerializer

class CategoriesView(viewsets.ModelViewSet):
      queryset = Categories.objects.all()
      serializer_class = CategoriesSerializer

class ServicesView(viewsets.ModelViewSet):
      queryset = Services.objects.all()
      serializer_class = ServicesSerializer

class ManagerView(viewsets.ModelViewSet):
     # authentication_classes = [TokenAuthentication ]
     # permission_classes = (IsAuthenticated)
      queryset = Manager.objects.all()
      serializer_class = ManagerSerializer

class ClientView(viewsets.ModelViewSet):
      queryset = Client.objects.all()
      serializer_class = ClientSerializer
      
class CommentView(viewsets.ModelViewSet):
      queryset = Comment.objects.all()
      serializer_class = CommentSerializer

class DocumentView(viewsets.ModelViewSet):
        parser_class = (FileUploadParser,)
        queryset = Document.objects.all()
        serializer_class = DocumentSerializer


    #        parser_class = (FileUploadParser,)

    # def post(self, request, *args, **kwargs):

    #   file_serializer = FileSerializer(data=request.data)

    #   if file_serializer.is_valid():
    #       file_serializer.save()
    #       return Response(file_serializer.data, status=status.HTTP_201_CREATED)
    #   else:
    #       return Response(file_serializer.errors, status=status.HTTP_400_BAD_REQUEST)      
""" 
class BookMarkView(viewsets.ModelViewSet):
      queryset = BookMark.objects.all()
      serializer_class = BookMarkSerializer 
       """
      

# 
# Machine learning APIs
# Our endpoint calls are directed to specific functions/classes in the views of our app.
# Here, we use the POST method for both the training and prediction calls. 
# The reasons for choosing POST is 
# that it can encompass lots of necessary parameters (plus security/authentication variables) 
# as json payload which we need to train the model with or authenticate a user.As you can see in theTrainclass,
#  first we load the iris dataset from sklearn’s datasets library and grab the model_name that the user wants to assign to the model. The trained model is pickled and stored in the MODEL_ROOT that we defined in our settings.py.
#For prediction purpose, we use the Predictclass. 
# The user can specify the model_name plus the necessary features for prediction/classification. 
# The code goes through each element of the json payload, grab the stored model and performs the prediction using that model. 
# The results are sent back as a list of predicted labels.

# As you can see in theTrainclass, first we load the iris dataset from sklearn’s datasets library 
# and grab the model_name that the user wants to assign to the model. The trained model is pickled 
# and stored in the MODEL_ROOT that we defined in our settings.py.
#For prediction purpose, we use the Predictclass. 
# The user can specify the model_name plus the necessary features for prediction/classification. 
# The code goes through each element of the json payload, grab the stored model and performs 
# the prediction using that model. The results are sent back as a list of predicted labels.


class Train(views.APIView):
    def post(self, request):
        iris = datasets.load_iris()
        mapping = dict(zip(np.unique(iris.target), iris.target_names))

        X = pd.DataFrame(iris.data, columns=iris.feature_names)
        y = pd.DataFrame(iris.target).replace(mapping)
        model_name = request.data.pop('model_name')

        try:
            clf = RandomForestClassifier(**request.data)
            clf.fit(X, y)
        except Exception as err:
            return Response(str(err), status=status.HTTP_400_BAD_REQUEST)

        path = os.path.join(settings.MEDIA_ROOT, model_name)
        with open(path, 'wb') as file:
            pickle.dump(clf, file)
        return Response(status=status.HTTP_200_OK)


class Predict(views.APIView):
    def post(self, request):
        predictions = []
        for entry in request.data:
            model_name = entry.pop('model_name')
            path = os.path.join(settings.MEDIA_ROOT, model_name)
            with open(path, 'rb') as file:
                model = pickle.load(file)
            try:
                result = model.predict(pd.DataFrame([entry]))
                predictions.append(result[0])

            except Exception as err:
                return Response(str(err), status=status.HTTP_400_BAD_REQUEST)

        return Response(predictions, status=status.HTTP_200_OK)
