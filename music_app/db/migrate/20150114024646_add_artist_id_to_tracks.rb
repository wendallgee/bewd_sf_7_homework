class AddArtistIdToTracks < ActiveRecord::Migration
  def change
  	add_column :tracks, :artists_id, :integer
  end
end
