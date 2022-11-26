
from django.urls import include,path
from rest_framework import routers
from . import views 
from django.contrib.auth import views as auth_views
from rest_framework_simplejwt.views import TokenObtainPairView,TokenRefreshView

from rest_framework_simplejwt.views import token_refresh,token_refresh,token_verify
from . views import  Train, Predict,DocumentView


router = routers.DefaultRouter()
router.register ('Managers',views.ManagerView)

router.register ('clients',views.ClientView)

router.register ('comments',views.CommentView)

router.register ('services',views.ServicesView)

router.register ('categories',views.CategoriesView)

#router.register ('users',views.UserViewSet)
#router.register('groups', views.GroupViewSet)
router.register ('Products',views.ProductView)

router.register ('Devices',views.DeviceView)
#router.register ('DeviceUsers',views.DeviceUsersView)
#router.register ('FileUpload',views.FileUploadView)
router.register ('Files',views.DocumentView)

app_name = 'API'
#admin/

urlpatterns = [
    path('',include(router.urls)),
    #path('Files/',DocumentView.as_view(),name="FileUpload"),
    path('train/', views.Train.as_view()  ,name="train" ),
    path('predict/', views.Predict.as_view()  , name="predict" ),
#  url(r'^train/$', Train.as_view(), name="train"),
#  url(r'^predict/$', Predict.as_view(), name="predict"),
    
    #url(r'^API/', RestAPI.urls),
    path('token/', TokenObtainPairView.as_view()   ),
    path('token/refresh', TokenRefreshView.as_view() ),

]
urlpatterns += [
    path('api-auth/', include('rest_framework.urls')),
]