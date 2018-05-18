class AddAttachmentContratoDocToContractGuards < ActiveRecord::Migration[5.1]
  def self.up
    change_table :contract_guards do |t|
      t.attachment :contrato_doc
    end
  end

  def self.down
    remove_attachment :contract_guards, :contrato_doc
  end
end
