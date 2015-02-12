class CreateArtWorks < ActiveRecord::Migration
  def change
    create_table :art_works do |t|
      t.string :name
      t.string :contact
      t.string :address

      t.timestamps
    end
  end
end
