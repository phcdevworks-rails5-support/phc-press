class AddPhcpressCategoryToPhcpressNewsPost < ActiveRecord::Migration

	def change
		add_column :pstcategory, :phcpress_news_posts, :string
	end

end
