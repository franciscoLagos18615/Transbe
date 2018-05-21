class AddAttachmentContratoDeInstalacionDocToContractInstallations < ActiveRecord::Migration[5.1]
  def self.up
    change_table :contract_installations do |t|
      t.attachment :contrato_de_instalacion_doc
    end
  end

  def self.down
    remove_attachment :contract_installations, :contrato_de_instalacion_doc
  end
end
