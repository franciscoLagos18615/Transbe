class CreateInstallations < ActiveRecord::Migration[5.1]
  def change
    create_table :installations do |t|
      t.string :name
      t.integer :number_guards
      t.integer :additional_guards
      t.datetime :date 
      t.timestamps
    end
  end
end
