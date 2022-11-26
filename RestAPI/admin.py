from django.contrib import admin
from .models import User,Categories,Services,Manager,Client,Comment,Device

#admin.site.register(MyAccountManager)
#admin.site.register(User)
admin.site.register(Categories)
admin.site.register(Services)
admin.site.register(Manager)
admin.site.register(Client)
admin.site.register(Comment)
admin.site.register(Device)

