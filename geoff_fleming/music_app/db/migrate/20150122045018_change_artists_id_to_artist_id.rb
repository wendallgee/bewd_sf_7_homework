class ChangeArtistsIdToArtistId < ActiveRecord::Migration
  def change
  	rename_column :tracks, :artists_id, :artist_id
  end
end
