class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.string :token
      t.text :description
      t.boolean :archived

      t.timestamps
    end
  end
end
