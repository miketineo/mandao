class AddDefaultActiveToUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :active, :boolean, null: false, default: true
  end
end
