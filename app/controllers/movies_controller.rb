class MoviesController < ApplicationController
  def index
    @movies = Movies.all
  end

  def show
    @movie = Movie.select(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params[:movie])
    @movie.save
  end

  def destroy
    @song = Song.find(params[:id])
    @Song.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to songs_path, status: :see_other
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:title, :overview)
  end
end
