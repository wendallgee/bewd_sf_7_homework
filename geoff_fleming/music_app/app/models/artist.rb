class Artist < ActiveRecord::Base
	has_many :tracks
	belongs_to :record_label
	validates_presence_of :record_label_id
end
