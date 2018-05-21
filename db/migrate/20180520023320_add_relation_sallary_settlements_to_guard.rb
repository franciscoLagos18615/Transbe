class AddRelationSallarySettlementsToGuard < ActiveRecord::Migration[5.1]
  def change
      change_table :sallary_settlements do |t|
        t.belongs_to :guard, index: true
        end
  end
end
