class AddExcerptsToPhcpressNewsPosts < ActiveRecord::Migration
	def change
		add_column :phcpress_news_posts, :newspstexcerpts, :text
	end
end
