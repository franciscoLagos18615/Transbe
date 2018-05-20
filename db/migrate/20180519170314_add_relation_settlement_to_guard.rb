class AddRelationSettlementToGuard < ActiveRecord::Migration[5.1]
  def change
    change_table :settlements do |t|
      t.belongs_to :guard, index: true
    end
  end
end
