class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.attachment :factura_evento_doc
      t.datetime :date
      t.belongs_to :installation, index: true
      t.timestamps
    end
  end
end
