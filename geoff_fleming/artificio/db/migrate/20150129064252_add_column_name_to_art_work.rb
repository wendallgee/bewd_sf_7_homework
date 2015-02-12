class AddColumnNameToArtWork < ActiveRecord::Migration
  def change
    add_column :art_works, :image_url, :string
  end
end
