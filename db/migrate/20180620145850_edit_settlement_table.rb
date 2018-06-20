class EditSettlementTable < ActiveRecord::Migration[5.1]
  def change
    add_column :settlements, :date, :datetime
    add_column :settlements, :observation, :text
  end
end
