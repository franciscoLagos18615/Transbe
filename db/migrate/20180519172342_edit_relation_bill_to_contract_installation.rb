class EditRelationBillToContractInstallation < ActiveRecord::Migration[5.1]
  def change
    change_table :bills do |t|
      t.remove_references :guard
    end
  end
end
