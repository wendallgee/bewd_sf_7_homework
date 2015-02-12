class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def show
    @artist = get_artist
    @art_works = @artist.art_works
  end

  def edit
    @artist = get_artist
  end

  def update
    @artist = get_artist
    @artist.update(artist_params)
    redirect_to artist_path(@artist) 
  end

  def destroy
    @artist = get_artist
    @artist.destroy
    redirect_to artists_path(@artist) 
  end

  private 

   def artist_params
    params.require(:artist).permit(:name, :biopic, :bio, :image, :contact)
   end

   def get_artist
    @artist = Artist.find(params[:id])
   end

end
