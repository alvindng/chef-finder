class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :image, :string
      t.column :chef_id, :integer

      t.timestamps

    end
  end
end
