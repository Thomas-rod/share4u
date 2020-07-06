class CreateMagnetProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :magnet_profiles do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :magnet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
