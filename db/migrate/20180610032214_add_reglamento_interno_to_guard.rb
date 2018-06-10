class AddReglamentoInternoToGuard < ActiveRecord::Migration[5.1]
  def self.up
    change_table :guards do |t|
      t.attachment :reg_interno_doc
    end
  end

  def self.down
    remove_attachment :guards, :reg_interno_doc
  end
end
