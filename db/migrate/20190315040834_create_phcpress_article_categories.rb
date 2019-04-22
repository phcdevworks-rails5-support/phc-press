class CreatePhcpressArticleCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :phcpress_article_categories do |t|

      t.string :catname

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
