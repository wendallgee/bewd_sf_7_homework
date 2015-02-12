class AddArtistIdToArtworks < ActiveRecord::Migration
  def change
    add_column :art_works, :artist_id, :integer
  end
end
