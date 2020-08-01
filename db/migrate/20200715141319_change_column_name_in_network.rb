class ChangeColumnNameInNetwork < ActiveRecord::Migration[6.0]
  def change
    rename_column :networks, :ative, :active
  end
end
