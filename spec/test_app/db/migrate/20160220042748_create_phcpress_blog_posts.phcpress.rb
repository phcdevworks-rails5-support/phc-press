# This migration comes from phcpress (originally 20160219213313)
class CreatePhcpressBlogPosts < ActiveRecord::Migration
	def change
		create_table :phcpress_blog_posts do |t|

			t.string :blogpsttitle
			t.text :blogpsttext
			t.string :pststatus

			t.timestamps null: false

		end
	end
end
