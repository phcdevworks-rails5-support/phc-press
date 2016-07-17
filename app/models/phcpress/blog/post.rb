module Phcpress
	class Blog::Post < ApplicationRecord

		# For Image Uploads
		mount_uploader :pstimage

		# Associate Post Authour to User
		belongs_to :user, class_name: 'Phcengine::User'
		belongs_to :category, class_name: 'Phcpress::Modules::Category'

	end
end
