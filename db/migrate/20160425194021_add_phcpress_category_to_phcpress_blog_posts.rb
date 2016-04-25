class AddPhcpressCategoryToPhcpressBlogPosts < ActiveRecord::Migration

	def change
		add_column :pstcategory, :phcpress_blog_posts, :string
	end

end
