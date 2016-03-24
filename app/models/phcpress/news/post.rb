module Phcpress
	class News::Post < ActiveRecord::Base

		# Filters Before Post
		before_create :authour

		# For Image Uploads
		mount_uploader :pstimage, Phcpress::PstimageUploader
		
		# Associate Post Authour to User
		belongs_to :user, class_name: 'Phcengine::User'
		
		# Define r Devise
		def authour
			self.user_id = current_user.id
		end

	end
end
