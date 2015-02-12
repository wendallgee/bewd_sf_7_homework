class AddContactToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :contact, :string
  end
end
