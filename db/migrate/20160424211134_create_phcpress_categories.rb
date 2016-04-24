class CreatePhcpressCategories < ActiveRecord::Migration
  def change
    create_table :phcpress_categories do |t|
      t.string :catname

      t.timestamps null: false
    end
  end
end
