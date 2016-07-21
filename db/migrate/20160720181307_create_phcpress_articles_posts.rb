class CreatePhcpressArticlesPosts < ActiveRecord::Migration[5.0]
	def change
		create_table :phcpress_articles_posts do |t|

			t.string :psttitle
			t.text :psttext
			t.string :pststatus
			t.text :pstexcerpts
			t.string :pstimage

			t.references :category

			t.timestamps

		end
	end
end
