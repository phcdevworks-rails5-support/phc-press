module Phcpress
	class Modules::Category < ApplicationRecord

		# Relationships
		has_many :connections, class_name: 'Modules::Connections'
		has_many :posts, class_name: 'Modules::Category', :through => :connections

	end
end
