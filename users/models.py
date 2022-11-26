from django.db import models
from django.contrib.auth.models import User
from PIL import Image
from django.utils import timezone

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
     #    author = models.ForeignKey(User, on_delete=models.CASCADE)
    image = models.ImageField(default='default.jpg', upload_to='profile_pics')
    cellphone = models.CharField(max_length=50, blank = True )
    occupation = models.CharField(max_length=10,  blank = True)
    city = models.CharField(max_length=50, blank = True)
    state = models.CharField(max_length=50, blank = True)
    zip = models.CharField(max_length=50, blank = True)
    content = models.TextField( blank = True)
    date_posted = models.DateTimeField(default=timezone.now)
 
    def __str__(self):
        return f'{self.user.username} Profile'

    def save(self,*args,**kwargs):
        super().save(*args,**kwargs)

        img = Image.open(self.image.path)

        if img.height > 300 or img.width > 300:
            output_size = (300, 300)
            img.thumbnail(output_size)
            img.save(self.image.path)