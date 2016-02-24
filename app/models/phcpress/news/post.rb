module Phcpress
	class News::Post < ActiveRecord::Base

		attr_accessible :pstimage
		mount_uploader :pstimage, Phcpress::PstimageUploader

	end
end
