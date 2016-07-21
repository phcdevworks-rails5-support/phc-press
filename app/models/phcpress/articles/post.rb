module Phcpress
	class Articles::Post < ApplicationRecord

		# For Image Uploads
		mount_uploader :pstimage, Phcpress::PstimageUploader
		
		# Relationships
		has_many :connections, class_name: 'Modules::Connections'
		has_many :categories, class_name: 'Modules::Category', :through => :connections

	end
end