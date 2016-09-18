class CreateChefs < ActiveRecord::Migration[5.0]
  def change
    create_table :chefs do |t|
      t.column :name, :string
      t.column :phone, :string
      t.column :address, :string

      t.timestamps
    end
  end
end
