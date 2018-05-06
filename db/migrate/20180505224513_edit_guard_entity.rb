class EditGuardEntity < ActiveRecord::Migration[5.1]
  def change
    remove_column :guards, :birthdate
    remove_column :guards, :name
    add_column :guards, :firstname, :string
    add_column :guards, :lastname, :string
    add_column :guards, :surname, :string
    add_column :guards, :age, :integer
    add_column :guards, :sex, :string
    add_column :guards, :city, :string
    add_column :guards, :commune, :string
    add_column :guards, :address, :string
    add_column :guards, :educational_level, :string
    add_column :guards, :second_phone, :string
  end
end
