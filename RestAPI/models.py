from django.db import models
from django.utils import timezone
from users.models import Profile
from django.conf import settings
from django.db.models.signals import post_save
from django.dispatch import receiver
from rest_framework.authtoken.models import Token
from PIL import Image
from django.urls import reverse
from django.contrib.auth.models import User, Group

class Manager(models.Model):
    User = models.ForeignKey(User, blank=True, null=True,  on_delete=models.CASCADE)
    date_joined = models.DateTimeField(auto_now_add=True)
    Title =  models.CharField(max_length=50, blank = True)
    class Meta: 
        unique_together =('User','Title')
        ordering = ['Title']
    def __(self):
        return  ' %s : %s ' %  ( self.Title , self.User.email )  
       
class Categories(models.Model):
    Name = models.CharField(max_length=50, blank = True)
    Description = models.CharField(max_length=50, blank = True)
    image =  models.FileField(upload_to='service/images', null=True, blank=True)
    Date_created = models.DateTimeField(auto_now_add=True)
    def __unicode__(self):
        return   ' %s  %s ' %  ( self.Name , self.Descritption )  
    def save(self,*args, using=None, **kwargs):
        super().save()
        img = Image.open(self.image.path)
        if img.height > 300 or img.width > 300:
            output_size = (300, 300)
            img.thumbnail(output_size)
            img.save(self.image.path)  

# Create your models here.
class Product(models.Model):
    Category = models.ForeignKey(Categories, on_delete=models.CASCADE)
    Name = models.CharField(max_length=50, blank = True)
    Date_needed = models.DateField(default= None)
    Address = models.CharField(max_length=50, blank = True)
    City = models.CharField(max_length=50, blank = True)
    State = models.CharField(max_length=50, blank = True)
    Zip = models.CharField(max_length=50, blank = True)
    Description = models.TextField( blank = True)
    image =  models.FileField(upload_to='service/files', null=True, blank=True)
    Date_created = models.DateTimeField(auto_now_add=True)
    def __unicode__(self):
        return   ' %s  %s ' % ( self.Name , self.Descritption )  
    def save(self,*args, using=None, **kwargs):
        super().save()
        img = Image.open(self.image.path)
        if img.height > 300 or img.width > 300:
            output_size = (300, 300)
            img.thumbnail(output_size)
            img.save(self.image.path)  
# Create your models here.
class Services(models.Model):
    Category = models.ForeignKey(Categories, on_delete=models.CASCADE)
    Name = models.CharField(max_length=50, blank = True)
    Date_needed = models.DateField(default= None)
    Address = models.CharField(max_length=50, blank = True)
    City = models.CharField(max_length=50, blank = True)
    State = models.CharField(max_length=50, blank = True)
    Zip = models.CharField(max_length=50, blank = True)
    WorkDescription = models.TextField( blank = True)
    image =  models.FileField(upload_to='service/files', null=True, blank=True)
    Date_created = models.DateTimeField(auto_now_add=True)
    User = models.ForeignKey(User,  blank=True, null=True, on_delete=models.CASCADE)

    def __unicode__(self):
        return   ' %s %s ' % ( self.Name , self.Descritption )  
    def delete(self, *args, **kwargs):
        self.Attachments.delete()
        super().delete(*args, **kwargs)
    def save(self,*args, using=None, **kwargs):
        super().save()
        img = Image.open(self.image.path)
        if img.height > 300 or img.width > 300:
            output_size = (300, 300)
            img.thumbnail(output_size)
            img.save(self.image.path) 




   

class Client(models.Model):
    name = models.CharField(max_length=300)
    client_email = models.EmailField(max_length=200)
    User = models.ForeignKey(User, blank=True, null=True,  on_delete=models.CASCADE)
    Cell = models.CharField(max_length=200, blank = True)
    Address = models.CharField(max_length=200, blank = True)
    City = models.CharField(max_length=100, blank = True)
    State = models.CharField(max_length=100, blank = True)
    zip = models.CharField(max_length=100, blank = True)
    url = models.URLField(max_length=300, blank = True)
    date_created =  models.DateTimeField(auto_now_add=True)
    class Meta: 
        unique_together =('name','client_email')
        ordering = ['name']

    def __(self):
        """Returns a string representation of a message."""
        return   ' %s : %s ' % ( self.Name , self.client_email )  
        
        
class Comment(models.Model):
    Title = models.CharField(max_length=300)
    User = models.ForeignKey(User, blank=True, null=True,  on_delete=models.CASCADE)
    url = models.URLField(max_length=300, blank = True)
    CommentText = models.TextField(blank=True)
    date_created = models.DateTimeField( auto_now_add=True)
    def __str__(self):
        """Returns a string representation of a message."""
      #  date = timezone.localtime(self.modified_date)
        return f'{self.Title }' 

class Device(models.Model):
    User = models.ManyToManyField(User,  blank=True) 
    #,related_name='DeviceUsers', through="Device_Users")
    Name = models.CharField(max_length=50, blank = True)
    LAT = models.CharField(max_length=50, blank = True)
    LONG = models.CharField(max_length=50, blank = True)
    Description = models.TextField( blank = True)
    Attachments =  models.FileField(upload_to='service/files', null=True, blank=True)
    Date_created = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return   ' %s : %s ' % ( self.Name , self.Description )  
    def delete(self, *args, **kwargs):
        self.Attachments.delete()
        super().delete(*args, **kwargs)
class DeviceUsers(models.Model):
    Device = models.ForeignKey(Device, on_delete=models.CASCADE)
    User = models.ForeignKey(User, on_delete=models.CASCADE)#, on_delete=models.CASCADE)
    role = models.CharField(max_length=40)
    def __unicode__(self):
        return self.User.username + " " + self.Device.name + " - " + self.role

class Document(models.Model):
    title =models.CharField(max_length=255,blank=False, null=False)
    file = models.FileField(upload_to='files',blank=False, null=False)
    #User = models.ForeignKey(User, on_delete=models.CASCADE)#, on_delete=models.CASCADE)
    User = models.ForeignKey(User, blank=True, null=True,  on_delete=models.CASCADE)

    def __str__(self):
        return self.file.name



@receiver(post_save,sender = settings.AUTH_USER_MODEL)
def create_auth_token(sender,instance=None,created=False, **kwargs):
    if created:
        Token.objects.create(user = instance)
        