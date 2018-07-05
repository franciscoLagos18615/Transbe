class AddFieldsToBills < ActiveRecord::Migration[5.1]
  def change
    add_column :bills, :bill_mount, :decimal
  end
end
