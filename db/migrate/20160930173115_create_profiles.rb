class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.column :latitude, :float
      t.column :longitude, :float
      t.column :address1, :string
      t.column :address2, :string
      t.column :city, :string
      t.column :state, :string
      t.column :zipcode, :string
      t.column :name, :string
      t.column :phone, :string
      t.column :description, :string
      t.timestamps
    end
  end
end
