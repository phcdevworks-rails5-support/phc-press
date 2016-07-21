module Phcpress
	class Modules::Category < ApplicationRecord
		
		# Relationships
		has_many :posts

	end
end
