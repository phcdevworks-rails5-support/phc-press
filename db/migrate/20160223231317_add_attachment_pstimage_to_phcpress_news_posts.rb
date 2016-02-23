class AddAttachmentPstimageToPhcpressNewsPosts < ActiveRecord::Migration

	def change
		add_column :phcpress_news_posts, :pstimage, :string
	end

end
