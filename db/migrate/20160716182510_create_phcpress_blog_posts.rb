class CreatePhcpressBlogPosts < ActiveRecord::Migration[5.0]
	def change
		create_table :phcpress_blog_posts do |t|

			t.string :blogpsttitle
			t.text :blogpsttext
			t.string :pststatus
			t.text :blogpstexcerpts
			t.string :pstimage

			t.references :category, index: true

			t.timestamps

		end
	end
end
