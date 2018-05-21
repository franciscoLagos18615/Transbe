class AddRelationContractToInstallation < ActiveRecord::Migration[5.1]
  def change
    change_table :contract_installations do |t|
      t.belongs_to :installation, index: true
    end
  end
end
