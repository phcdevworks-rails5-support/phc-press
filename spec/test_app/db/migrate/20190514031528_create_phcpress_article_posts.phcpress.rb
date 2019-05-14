# This migration comes from phcpress (originally 20190315010932)
class CreatePhcpressArticlePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :phcpress_article_posts do |t|

      t.string :post_tittle
      t.text :post_text
      t.string :post_status
      t.string :post_image

      t.string :slug
      t.string :user_id

      t.timestamps

    end
  end
end
