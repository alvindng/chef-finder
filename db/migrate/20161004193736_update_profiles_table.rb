class UpdateProfilesTable < ActiveRecord::Migration[5.0]
  def change
    add_reference :dishes, :profile, foreign_key: true
    add_reference :profiles, :user, foreign_key: true
  end
end
