class Place < ActiveRecord::Base
	belongs_to :location
	has_many :photos
	has_many :comments, as: :commentable
end
