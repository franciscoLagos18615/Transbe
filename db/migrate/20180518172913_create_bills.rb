class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.text :description
      t.decimal :ingress
      t.timestamps
    end
  end
end
