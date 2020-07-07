class CreateMagnets < ActiveRecord::Migration[6.0]
  def change
    create_table :magnets do |t|
      t.string :url
      t.references :token, null: false, foreign_key: true

      t.timestamps
    end
  end
end
