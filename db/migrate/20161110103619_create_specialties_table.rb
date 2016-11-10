class CreateSpecialtiesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :specialties do |t|
      t.column :name, :string
    end
  end
end
