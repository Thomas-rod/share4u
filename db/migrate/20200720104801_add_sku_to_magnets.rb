class AddSkuToMagnets < ActiveRecord::Migration[6.0]
  def change
    add_column :magnets, :sku, :string, default: ""
  end
end
