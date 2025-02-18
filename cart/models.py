# from django.db import models
# from django.contrib.auth.models import User
# from movies.models import Movie
# class Order(models.Model):
#     id = models.AutoField(primary_key=True)
#     total = models.IntegerField()
#     date = models.DateTimeField(auto_now_add=True)
#     user = models.ForeignKey(User,
#         on_delete=models.CASCADE)
#     def __str__(self):
#         return str(self.id) + ' - ' + self.user.username
# # Create your models here.

# class Item(models.Model):
#     id = models.AutoField(primary_key=True)
#     price = models.IntegerField()
#     quantity = models.IntegerField()
#     order = models.ForeignKey(Order,
#         on_delete=models.CASCADE)
#     movie = models.ForeignKey(Movie,
#         on_delete=models.CASCADE)
#     def __str__(self):
#         return str(self.id) + ' - ' + self.movie.name
from django.db import models
from django.contrib.auth.models import User
from movies.models import Movie
from decimal import Decimal
class Order(models.Model):
    id = models.AutoField(primary_key=True)
    total = models.DecimalField(max_digits=10, decimal_places=2, default=Decimal('0.00'))
    date = models.DateTimeField(auto_now_add=True)
    user = models.ForeignKey(User,
        on_delete=models.CASCADE)
    def __str__(self):
        return str(self.id) + ' - ' + self.user.username
# Create your models here.

class Item(models.Model):
    id = models.AutoField(primary_key=True)
    price = models.DecimalField(max_digits=10, decimal_places=2, default=Decimal('0.00'))
    quantity = models.IntegerField()
    order = models.ForeignKey(Order,
        on_delete=models.CASCADE)
    movie = models.ForeignKey(Movie,
        on_delete=models.CASCADE)
    def __str__(self):
        return str(self.id) + ' - ' + self.movie.name
