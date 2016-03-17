# This migration comes from phcpress (originally 20160316131626)
class CreatePhcpressNewsPosts < ActiveRecord::Migration
	def change
		create_table :phcpress_news_posts do |t|

			t.string :newspsttitle
			t.text :newspsttext
			t.string :pststatus
			t.text :newspstexcerpts
			t.string :pstimage

			t.integer :user_id

			t.timestamps null: false

		end
	end
end
