class AddNameToContractGuards < ActiveRecord::Migration[5.1]
  def change
    add_column :contract_guards, :name, :string
  end
end
