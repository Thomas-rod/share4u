class CreateSocials < ActiveRecord::Migration[6.0]
  def change
    create_table :socials do |t|
      t.string :name
      t.string :url_desktop_begin
      t.string :url_mobile_begin

      t.timestamps
    end
  end
end
