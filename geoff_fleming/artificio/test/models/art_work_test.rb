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

require 'test_helper'

class ArtWorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
