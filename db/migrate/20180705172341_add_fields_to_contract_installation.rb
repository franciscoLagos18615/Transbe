class AddFieldsToContractInstallation < ActiveRecord::Migration[5.1]
  def change
    add_column :contract_installations, :name, :string
  end
end
