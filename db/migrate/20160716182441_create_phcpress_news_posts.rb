class CreatePhcpressNewsPosts < ActiveRecord::Migration[5.0]
	def change
		create_table :phcpress_news_posts do |t|

			t.string :newspsttitle
			t.text :newspsttext
			t.string :pststatus
			t.text :newspstexcerpts
			t.string :pstimage

			t.integer :user_id
			t.integer :category_id

			t.timestamps null: false

		end
	end
end
