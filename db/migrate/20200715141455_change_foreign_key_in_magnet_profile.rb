class ChangeForeignKeyInMagnetProfile < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :magnet_profiles, column: :profile_id
    remove_column :magnet_profiles, :profile_id
    add_reference :magnet_profiles, :profile, null: true, foreign_key: true
  end
end
