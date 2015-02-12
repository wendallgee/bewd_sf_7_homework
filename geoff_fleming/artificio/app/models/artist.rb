# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  bio        :text
#  biopic     :string(255)
#  image_id   :string(255)
#

class Artist < ActiveRecord::Base
  has_many :art_works
  attachment :image

  validates_presence_of :name, :bio
  validates_uniqueness_of :name
end
