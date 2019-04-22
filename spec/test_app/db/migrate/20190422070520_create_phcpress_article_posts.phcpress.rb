# This migration comes from phcpress (originally 20190315010932)
class CreatePhcpressArticlePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :phcpress_article_posts do |t|

      t.string :psttittle
      t.string :psttext
      t.string :pststatus
      t.string :pstimage

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
