class AddAttachmentVacacionDocToVacations < ActiveRecord::Migration[5.1]
  def self.up
    change_table :vacations do |t|
      t.attachment :vacacion_doc
    end
  end

  def self.down
    remove_attachment :vacations, :vacacion_doc
  end
end
