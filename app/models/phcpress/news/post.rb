module Phcpress
	class News::Post < ActiveRecord::Base

		# Define scoped_to for Devise
		def scoped_to(account)
			where(:user_id => current_user.id)
		end

		# For Image Uploads
		mount_uploader :pstimage, Phcpress::PstimageUploader
		
		# Associate Post Authour to User
		belongs_to :user

	end
end
