class AddAttachmentFacturaDocToBills < ActiveRecord::Migration[5.1]
  def self.up
    change_table :bills do |t|
      t.attachment :factura_doc
    end
  end

  def self.down
    remove_attachment :bills, :factura_doc
  end
end
