module Phcpress
	class Articles::Post < ApplicationRecord

		# For Image Uploads
		mount_uploader :pstimage, Phcpress::PstimageUploader
		
		# Relationships
		has_many :categories, class_name: 'Modules::Category'

	end
end