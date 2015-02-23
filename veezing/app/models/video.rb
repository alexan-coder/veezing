class Video < ActiveRecord::Base
	has_many :zings
	has_many :comments
end
