class AddActiveObservationFieldToGuard < ActiveRecord::Migration[5.1]
  def change
    change_table :guards do |t|
      t.text :observations
      t.boolean :active
    end
  end
end
