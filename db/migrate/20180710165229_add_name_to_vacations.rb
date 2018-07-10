class AddNameToVacations < ActiveRecord::Migration[5.1]
  def change
    add_column :vacations, :name, :string
  end
end
