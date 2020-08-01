class RemoveForeignKeyMagnet < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :magnets, column: :token_id
    remove_column :magnets, :token_id
  end
end
