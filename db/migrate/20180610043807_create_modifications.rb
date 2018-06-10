class CreateModifications < ActiveRecord::Migration[5.1]
  def change
    create_table :modifications do |t|
      t.belongs_to :contract_guard, index: true
      t.attachment :modificacion_doc
      t.timestamps
    end
  end
end
