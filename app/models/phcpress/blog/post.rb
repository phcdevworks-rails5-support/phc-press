module Phcpress
	class Blog::Post < ActiveRecord::Base

		# For Image Uploads
		mount_uploader :pstimage, Phcpress::PstimageUploader

	end
end
