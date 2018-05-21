class CreateSallarySettlements < ActiveRecord::Migration[5.1]
  def change
    create_table :sallary_settlements do |t|
      t.integer :cost
      t.datetime :date
      t.timestamps
    end
  end
end
