class CreatePhcpressArticlesPosts < ActiveRecord::Migration[5.0]
  def change

    create_table :phcpress_articles_posts do |t|

      t.string :psttitle
      t.text :psttext
      t.string :pststatus
      t.string :pstimage

      t.string :user_id
      t.string :user_name

      t.timestamps

    end

  end
end
