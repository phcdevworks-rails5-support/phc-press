class AddPhcpressCategoryToPhcpressNewsPost < ActiveRecord::Migration

	def change
		add_column :phcpress_news_posts, :pstcategory_id, :string
	end

end
