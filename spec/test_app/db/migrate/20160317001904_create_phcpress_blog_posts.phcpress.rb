# This migration comes from phcpress (originally 20160316131650)
class CreatePhcpressBlogPosts < ActiveRecord::Migration
	def change
		create_table :phcpress_blog_posts do |t|

			t.string :blogpsttitle
			t.text :blogpsttext
			t.string :pststatus
			t.text :blogpstexcerpts
			t.string :pstimage

			t.integer :user_id

			t.timestamps null: false

		end
	end
end
