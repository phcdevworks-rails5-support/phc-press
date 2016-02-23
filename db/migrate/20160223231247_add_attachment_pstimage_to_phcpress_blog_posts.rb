class AddAttachmentPstimageToPhcpressBlogPosts < ActiveRecord::Migration

	# Add Column for Image Upload
	def change
		add_column :phcpress_blog_posts, :pstimage, :string
	end

end
