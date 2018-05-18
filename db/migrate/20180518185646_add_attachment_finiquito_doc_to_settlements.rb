class AddAttachmentFiniquitoDocToSettlements < ActiveRecord::Migration[5.1]
  def self.up
    change_table :settlements do |t|
      t.attachment :finiquito_doc
    end
  end

  def self.down
    remove_attachment :settlements, :finiquito_doc
  end
end
