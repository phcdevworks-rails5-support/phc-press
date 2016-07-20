module Phcpress
	class Modules::Category < ApplicationRecord
		
		# Relationships
		has_many :connections
		has_many :posts, :through => :connections, class_name: 'Phcpress::Articles::Post'

	end
end
