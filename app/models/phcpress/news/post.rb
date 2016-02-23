module Phcpress
	class News::Post < ActiveRecord::Base

		mount_uploader :image, Phcpress::PstimageUploader

	end
end
