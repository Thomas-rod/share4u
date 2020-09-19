class AddDirectOfAndOrderToNetwork < ActiveRecord::Migration[6.0]
  def change
    add_column :networks, :order, :integer
    add_column :networks, :direct, :boolean
  end
end
