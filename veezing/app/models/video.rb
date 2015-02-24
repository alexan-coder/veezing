class Video < ActiveRecord::Base
	has_many :zings
	has_many :comments
	default_scope -> { order('created_at DESC') }

	def prev
		if id > 1
		Video.find(id - 1)
		end
	end

  	def next
  		if id < Video.first.id
    	Video.find(id + 1)
    	end
  	end
end

