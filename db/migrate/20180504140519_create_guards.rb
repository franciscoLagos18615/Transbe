 class CreateGuards < ActiveRecord::Migration[5.1]
  def change
    create_table :guards do |t|
      t.string :name
      t.string :rut
      t.string :phone_number
      t.datetime :birthdate
      t.string :email
      t.string :nationality
      t.timestamps
    end
  end
end
