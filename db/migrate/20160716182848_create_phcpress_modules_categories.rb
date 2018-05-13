class CreatePhcpressModulesCategories < ActiveRecord::Migration[5.2]
  def change

    create_table :phcpress_modules_categories do |t|

      t.string :catname

      t.string :slug

      t.string :user_id
      t.string :user_name

      t.timestamps

    end

  end
end
