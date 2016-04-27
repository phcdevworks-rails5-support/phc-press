class AddPhcpressCategoryToPhcpressBlogPosts < ActiveRecord::Migration

	def change
		add_column :phcpress_blog_posts, :pstcategory_id, :string
	end

end
