class AddNameToSettlements < ActiveRecord::Migration[5.1]
  def change
    add_column :settlements, :name, :string
  end
end
