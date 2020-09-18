class AddPlaceholderToSocials < ActiveRecord::Migration[6.0]
  def change
    add_column :socials, :placeholder, :string
  end
end
