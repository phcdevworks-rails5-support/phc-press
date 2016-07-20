class CreatePhcpressModulesConnections < ActiveRecord::Migration[5.0]
	def change
		create_table :phcpress_modules_connections do |t|

			t.references :post, index: true
			t.references :category, index: true

			t.timestamps

		end
	end
end
