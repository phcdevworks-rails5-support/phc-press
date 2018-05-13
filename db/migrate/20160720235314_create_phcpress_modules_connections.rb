class CreatePhcpressModulesConnections < ActiveRecord::Migration[5.2]
  def change

    create_table :phcpress_modules_connections do |t|

      t.references :post
      t.references :category

      t.string :slug

      t.string :user_id
      t.string :user_name

      t.timestamps

    end

  end
end
