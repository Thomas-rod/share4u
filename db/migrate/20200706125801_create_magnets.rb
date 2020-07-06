class CreateMagnets < ActiveRecord::Migration[6.0]
  def change
    create_table :magnets do |t|
      t.string :token
      t.string :url

      t.timestamps
    end
  end
end
