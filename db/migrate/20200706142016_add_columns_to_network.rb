class AddColumnsToNetwork < ActiveRecord::Migration[6.0]
  def change
    add_column :networks, :ative, :boolean, default: true
    add_column :networks, :priority, :boolean, default: false
  end
end
