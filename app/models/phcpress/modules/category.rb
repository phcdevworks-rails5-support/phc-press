module Phcpress
	class Modules::Category < ApplicationRecord

		has_many :posts, class_name: 'Phcpress::News::Post'
		has_many :posts, class_name: 'Phcpress::Blog::Post'

	end
end
