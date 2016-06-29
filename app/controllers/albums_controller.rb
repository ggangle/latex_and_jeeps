class AlbumsController < ApplicationController

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to "/"
    else
      render :new
    end
  end

  def show
  end

  def index
    @album = Album.all
  end

private

  def album_params
    params.require(:title).permit(:caption, :id)
  end
end