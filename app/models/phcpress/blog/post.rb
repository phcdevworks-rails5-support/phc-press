module Phcpress
	class Blog::Post < ActiveRecord::Base

		mount_uploader :pstimage, Phcpress::PstimageUploader

	end
end
