class CreatePhcpressNewsPosts < ActiveRecord::Migration
	def change
		create_table :phcpress_news_posts do |t|

			t.string :newspsttitle
			t.text :newspsttext
			t.string :pststatus
			
			t.integer :user_id

			t.timestamps null: false

		end
	end
end
