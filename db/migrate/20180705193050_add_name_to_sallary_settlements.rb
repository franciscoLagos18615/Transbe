class AddNameToSallarySettlements < ActiveRecord::Migration[5.1]
  def change
    add_column :sallary_settlements, :name, :string
  end
end
