class AddRelationBillToGuard < ActiveRecord::Migration[5.1]
  def change
    change_table :bills do |t|
      t.belongs_to :guard, index: true
    end
  end
end
