module Phcpress
	class Articles::Post < ApplicationRecord

		# For Image Uploads
		mount_uploader :pstimage, Phcpress::PstimageUploader
		
		# Relationships
		# Relationships
		has_many :connections
		has_many :categories, :through => :connections, class_name: 'Phcpress::Modules::Category'

	end
end