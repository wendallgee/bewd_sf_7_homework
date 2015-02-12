class AddBiopicToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :biopic, :string
  end
end
