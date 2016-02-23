module Phcpress
	class Blog::Post < ActiveRecord::Base

		mount_uploader :image, Phcpress::PstimageUploader

	end
end
