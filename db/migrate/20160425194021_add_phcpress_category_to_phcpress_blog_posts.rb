class AddPhcpressCategoryToPhcpressBlogPosts < ActiveRecord::Migration

	def change
		add_column :pstcategory_id, :phcpress_blog_posts, :string
	end

end
