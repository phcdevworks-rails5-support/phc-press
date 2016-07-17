class CreatePhcpressModulesCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :phcpress_modules_categories do |t|

      t.string :catname

			t.integer :user_id
	
      t.timestamps null: false

    end
  end
end