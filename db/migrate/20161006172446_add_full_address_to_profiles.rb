class AddFullAddressToProfiles < ActiveRecord::Migration[5.0]
  def change
     add_column :profiles, :full_address, :string
  end
end
