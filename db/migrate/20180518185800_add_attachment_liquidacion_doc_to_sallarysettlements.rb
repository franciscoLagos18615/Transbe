class AddAttachmentLiquidacionDocToSallarysettlements < ActiveRecord::Migration[5.1]
  def self.up
    change_table :sallary_settlements do |t|
      t.attachment :liquidacion_doc
    end
  end

  def self.down
    remove_attachment :sallary_settlements, :liquidacion_doc
  end
end
