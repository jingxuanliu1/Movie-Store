import os
from dotenv import load_dotenv

import requests
from django.shortcuts import render, redirect, get_object_or_404
from .models import Movie, Review
from django.contrib.auth.decorators import login_required

load_dotenv()
TMDB_API_KEY = os.getenv('TMDB_API_KEY')


def get_movies(search_term=None):
    base_url = "https://api.themoviedb.org/3"

    if search_term:
        url = f"{base_url}/search/movie?api_key={TMDB_API_KEY}&language=en-US&query={search_term}"
    else:
        url = f"{base_url}/movie/popular?api_key={TMDB_API_KEY}&language=en-US&page=1"

    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()

        movies = [
            {
                'id': movie['id'],
                'name': movie['title'],
                'price': 10,
                'description': movie['overview'],
                'poster': f"https://image.tmdb.org/t/p/w500{movie['poster_path']}"
            }
            for movie in data.get('results', [])
        ]

        return movies
    else:
        return []

def get_movie_details(movie_id):
    url = f"https://api.themoviedb.org/3/movie/{movie_id}?api_key={TMDB_API_KEY}&language=en-US"
    response = requests.get(url)
    if response.status_code == 200:
        movie = response.json()
        return {
            'id': movie['id'],
            'name': movie['title'],
            'description': movie['overview'],
            'poster': f"https://image.tmdb.org/t/p/w500{movie['poster_path']}"
        }
    return None

def index(request):
    search_term = request.GET.get('search')

    template_data = {
        'title': 'Movies',
        'movies': get_movies(search_term),
    }
    return render(request, 'movies/index.html', {'template_data':template_data})

def show(request, id):
    movie = get_movie_details(id)
    if not movie:
        return render(request, 'movies/show.html', {'template_data': template_data})
    reviews = Review.objects.filter(movie_id=id)

    template_data = {
        'title': movie['name'],
        'movie': movie,
        'reviews': reviews,
    }
    return render(request, 'movies/show.html', {'template_data': template_data})

@login_required
def create_review(request, id):
    if request.method == 'POST' and request.POST['comment'] != '':
        movie = Movie.objects.get(id=id)
        review = Review()
        review.comment = request.POST['comment']
        review.movie = movie
        review.user = request.user
        review.save()
        return redirect('movies.show', id=id)
    else:
        return redirect('movies.show', id=id)

@login_required
def edit_review(request, id, review_id):
    review = get_object_or_404(Review, id=review_id)
    if request.user != review.user:
        return redirect('movies.show', id=id)

    if request.method == 'GET':
        template_data = {}
        template_data['title'] = 'Edit Review'
        template_data['review'] = review
        return render(request, 'movies/edit_review.html', {'template_data': template_data})
    elif request.method == 'POST' and request.POST['comment'] != '':
        review = Review.objects.get(id=review_id)
        review.comment = request.POST['comment']
        review.save()
        return redirect('movies.show', id=id)
    else:
        return redirect('movies.show', id=id)

@login_required
def delete_review(request, id, review_id):
    review = get_object_or_404(Review, id=review_id, user=request.user)
    review.delete()
    return redirect('movies.show', id=id)