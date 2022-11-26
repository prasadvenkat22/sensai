from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse
from PIL import Image


class Post(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    date_posted = models.DateTimeField(default=timezone.now)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    image = models.ImageField(default='default.jpg', upload_to='blog_pics')
    def __str__(self):
        return self.title
    def get_absolute_url(self):
        return reverse('post-detail', kwargs={'pk': self.pk})
    def __str__(self):
        return f'{self.user.username} Blog'
    def save(self,*args,**kwargs):
        super().save(*args,**kwargs)

        img = Image.open(self.image.path)
        if img.height > 100 or img.width > 100:
            output_size = (400, 1000)
            img.save(self.image.path)
