module Phcpress
	class Modules::Connection < ApplicationRecord

		# Relationships
		belongs_to :category
		belongs_to :post

	end
end
