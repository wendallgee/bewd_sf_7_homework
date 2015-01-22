class ArtistsController < ApplicationController
  def new
  	@artist = Artist.new
  end

  def create
  	@artist = Artist.new(artist_params)
  	if @artist.save
  	redirect_to_artist_path(@artist)
    else 
      render :new
    end
  end

  def index
  	@artists = Artist.all
  end

  def show
  	@artist = get_artist
  end

  def edit
  	@artist = get_artist
  		
  end

  def update
  	@artist = get_artist
  		@artist.update(artist_params)
  		redirect_to artists_path(@artist)
  end

  def destroy
    @artist = get_artist
    @artist.destroy
    redirect_to artists_path 
  end

  def artist_params
  	params.require(:artist).permit(:name, :pic_url, :record_label_id)
  end

  def get_artist
  	@artist = Artist.find(params[:id])
  end

private

	def record_label_params
		params.require(:record_label).(:name)
	end

	def get_record_label
		@record_label = RecordLabel.find(params[:id])
	end

end