class CreateContractGuards < ActiveRecord::Migration[5.1]
  def change
    create_table :contract_guards do |t|
      t.datetime :start_date
      t.datetime :finish_date
      t.timestamps
    end
  end
end
