class AddFieldsToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :bill_description, :text
    add_column :events, :bill_mount, :decimal
  end
end
