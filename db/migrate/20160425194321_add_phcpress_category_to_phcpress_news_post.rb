class AddPhcpressCategoryToPhcpressNewsPost < ActiveRecord::Migration

	def change
		add_column :pstcategory_id, :phcpress_news_posts, :string
	end

end
