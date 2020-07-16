class AddKindToSocials < ActiveRecord::Migration[6.0]
  def change
    add_column :socials, :kind, :string, default: "username"
  end
end
