class AddDescriptionToSocials < ActiveRecord::Migration[6.0]
  def change
    add_column :socials, :header, :string, default: ""
    add_column :socials, :explanation, :string, default: ""
  end
end
