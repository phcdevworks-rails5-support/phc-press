class CreatePhcpressPostprocessStatuses < ActiveRecord::Migration
  def change
    create_table :phcpress_postprocess_statuses do |t|
      t.string :pststatus

      t.timestamps null: false
    end
  end
end
