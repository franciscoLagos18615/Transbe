class AddRelationVacationToGuard < ActiveRecord::Migration[5.1]
  def change
    change_table :vacations do |t|
      t.belongs_to :guard, index: true
    end
  end
end
