# == Schema Information
#
# Table name: art_works
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  image_url  :string(255)
#  artist_id  :integer
#  image_id   :string(255)
#

class ArtWork < ActiveRecord::Base
  attachment :image
  belongs_to :artist
end
