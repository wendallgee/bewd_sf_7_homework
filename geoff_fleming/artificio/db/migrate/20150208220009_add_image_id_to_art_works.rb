class AddImageIdToArtWorks < ActiveRecord::Migration
  def change
    add_column :art_works, :image_id, :string
  end
end
