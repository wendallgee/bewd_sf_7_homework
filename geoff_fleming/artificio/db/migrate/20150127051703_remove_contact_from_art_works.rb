class RemoveContactFromArtWorks < ActiveRecord::Migration
  def change
    remove_column :art_works, :contact
  end
end
