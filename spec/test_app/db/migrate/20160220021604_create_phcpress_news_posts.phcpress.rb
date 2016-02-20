# This migration comes from phcpress (originally 20160219213259)
class CreatePhcpressNewsPosts < ActiveRecord::Migration
  def change
    create_table :phcpress_news_posts do |t|
      t.string :newspsttitle
      t.text :newspsttext
      t.references :pststatus, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
