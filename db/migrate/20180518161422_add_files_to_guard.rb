class AddFilesToGuard < ActiveRecord::Migration[5.1]
  def self.up
    change_table :guards do |t|
      t.attachment :ficha_guardia_doc
      t.attachment :cert_estudio_doc
      t.attachment :cert_residencia_doc
      t.attachment :cedula_identidad_doc
      t.attachment :pacto_horas_doc
      t.attachment :cert_antecedentes_doc
      t.attachment :credencial_doc
    end
  end

  def self.down
    remove_attachment :guards, :ficha_guardia_doc
    remove_attachment :guards, :cert_estudio_doc
    remove_attachment :guards, :cert_residencia_doc
    remove_attachment :guards, :cedula_identidad_doc
    remove_attachment :guards, :pacto_horas_doc
    remove_attachment :guards, :cert_antecedentes_doc
    remove_attachment :guards, :credencial_doc
  end
end
