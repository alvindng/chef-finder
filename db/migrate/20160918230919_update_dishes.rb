class UpdateDishes < ActiveRecord::Migration[5.0]
  def change
    remove_column :dishes, :chef_id
    add_column :dishes, :user_id, :integer
  end
end
