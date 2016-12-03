class CreatePhcpressModulesConnections < ActiveRecord::Migration[5.0]
	def change

		create_table :phcpress_modules_connections do |t|

			t.references :post
			t.references :category

			t.timestamps

		end

	end
end
