module Phcpress
	class Modules::Category < ApplicationRecord

		# Relationships
		has_many :posts, class_name: 'Modules::Category'

	end
end
