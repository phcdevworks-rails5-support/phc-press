module Phcpress
	class Blog::Post < ActiveRecord::Base

		attr_accessible :pstimage
		mount_uploader :pstimage, Phcpress::PstimageUploader

	end
end
