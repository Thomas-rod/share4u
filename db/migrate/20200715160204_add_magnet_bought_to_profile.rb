class AddMagnetBoughtToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :magnet_bought, :boolean, default: false
  end
end
