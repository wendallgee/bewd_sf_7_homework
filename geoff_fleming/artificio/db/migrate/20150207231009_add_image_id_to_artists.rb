class AddImageIdToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :image_id, :string
  end
end
