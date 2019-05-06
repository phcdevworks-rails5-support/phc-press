# This migration comes from phcpress (originally 20190315040834)
class CreatePhcpressArticleCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :phcpress_article_categories do |t|

      t.string :category_name

      t.string :slug
      t.string :user_id

      t.timestamps

    end
  end
end
