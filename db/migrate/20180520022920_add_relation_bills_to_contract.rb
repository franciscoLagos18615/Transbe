class AddRelationBillsToContract < ActiveRecord::Migration[5.1]
  def change
    change_table :bills do |t|
      t.belongs_to :contract_installation, index: true
    end
  end
end
