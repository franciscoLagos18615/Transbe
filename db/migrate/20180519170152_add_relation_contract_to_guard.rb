class AddRelationContractToGuard < ActiveRecord::Migration[5.1]
  def change
    change_table :contract_guards do |t|
      t.belongs_to :guard, index: true
    end
  end
end
