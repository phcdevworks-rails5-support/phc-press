class CreatePhcpressArticlesPosts < ActiveRecord::Migration[5.0]
	def change

		create_table :phcpress_articles_posts do |t|

			t.string :psttitle
			t.text :psttext
			t.string :pststatus
			t.string :pstimage

			t.timestamps

		end

	end
end
