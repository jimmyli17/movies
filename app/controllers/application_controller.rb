class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def show
    @movie = Movie.find_by_id(params['id'])
  end
  def new
  end
  def create
    m = Movie.new
    m.imdb = params['imdb']
    m.image = params['image']
    m.name = params['name']
    m.save
    redirect_to "/movies/#{m.id}"
  end
  def edit
    @movie = Movie.find_by_id(params['id'])
  end
  def update
    m = Movie.find_by_id(params['id'])
    m.imdb = params['imdb']
    m.image = params['image']
    m.name = params['name']
    m.save
    redirect_to "/movies/#{m.id}"
  end
  def index
    @movies = Movie.all
  end
  def delete
    m = Movie.find_by_id(params['id'])
    m.destroy
    redirect_to "/movies"
  end
end
