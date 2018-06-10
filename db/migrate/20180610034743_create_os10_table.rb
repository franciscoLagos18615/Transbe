class CreateOs10Table < ActiveRecord::Migration[5.1]
  def change
    create_table :osdocumentations do |t|
      t.belongs_to :guard, index: true
      t.datetime :expiration
      t.attachment :certificado_os10_doc
      t.boolean :state
    end
  end
end
