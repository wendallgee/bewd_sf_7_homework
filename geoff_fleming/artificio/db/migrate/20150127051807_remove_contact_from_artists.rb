class RemoveContactFromArtists < ActiveRecord::Migration
  def change
    remove_column :artists, :contact
  end
end
