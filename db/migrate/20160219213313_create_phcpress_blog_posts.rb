class CreatePhcpressBlogPosts < ActiveRecord::Migration
  def change
    create_table :phcpress_blog_posts do |t|
      t.string :blogpsttitle
      t.text :blogpsttext
      t.references :pststatus, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
