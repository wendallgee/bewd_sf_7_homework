class ArtWorksController < ApplicationController

    def index
      @artworks = ArtWork.all
    end

    def new
      @artwork = ArtWork.new
    end

    def create
      @artwork = ArtWork.new(artwork_params)
      if @artwork.save
      redirect_to art_works_path(@artwork)
      else
      render :new
      end
    end

    def show
       @artwork = get_artwork
    end

    def edit
      @artwork = get_artwork
    end

    def update
       @artwork = get_artwork
       @artwork.update(artwork_params)
       redirect_to art_works_path(@artwork)
  end

    def destroy
      @artwork = get_artwork
    end

   private 

    def artwork_params
      params.require(:art_work).permit(:name, :image_url, :artist_id, :image)
    end

    def get_artwork
      @artwork = ArtWork.find(params[:id])
    end

end
