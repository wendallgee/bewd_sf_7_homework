class TracksController < ApplicationController

  def index
  	@tracks = Track.all
  end

  def new
  	@track = Track.new
  end

  def create
  	@track = Track.new(track_params)
    	if @track.save
    	redirect_to track_path(@track)
      else 
        render :new
      end
  end

  def edit
  end

  def update
  end

  def show
  	@track = get_track
  end

  def get_track
  	@track = Track.find(params[:id])
  end




private

  def track_params
    params.require(:track).permit(:title,:track_link)
  end

  def get_artist
  	@artist = Artist.find(params[:id])
  end

end

