class CreateVacations < ActiveRecord::Migration[5.1]
  def change
    create_table :vacations do |t|
      t.integer :days_taken
      t.timestamps
    end
  end
end
