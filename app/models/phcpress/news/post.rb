module Phcpress
	class News::Post < ApplicationRecord

		# For Image Uploads
		mount_uploader :pstimage, Phcpress::PstimageUploader
		
		# Associate Post Authour to User
		belongs_to :user, class_name: 'Phcengine::User'
		belongs_to :category, class_name: 'Phcpress::Modules::Category'

	end
end
