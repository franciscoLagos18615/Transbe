class AddEppEntregaToGuard < ActiveRecord::Migration[5.1]
  def self.up
    change_table :guards do |t|
      t.attachment :epp_entrega_doc
    end
  end

  def self.down
    remove_attachment :guards, :epp_entrega_doc
  end
end
