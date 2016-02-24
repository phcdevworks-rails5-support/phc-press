module Phcpress
	class News::Post < ActiveRecord::Base

		mount_uploader :pstimage, Phcpress::PstimageUploader

	end
end
