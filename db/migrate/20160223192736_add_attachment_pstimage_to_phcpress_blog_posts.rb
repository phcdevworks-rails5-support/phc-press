class AddAttachmentPstimageToPhcpressBlogPosts < ActiveRecord::Migration

	# Image Upload Create
	def self.up
		change_table :phcpress_blog_posts do |t|
			t.attachment :pstimage
		end
	end

	# Remove An Uploaded Image
	def self.down
		remove_attachment :phcpress_blog_posts, :pstimage
	end

end
