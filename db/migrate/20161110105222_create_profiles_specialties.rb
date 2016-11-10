class CreateProfilesSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles_specialties, id: false do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :specialty, index: true
    end
  end
end
