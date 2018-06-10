class AddDerechoASaberToGuard < ActiveRecord::Migration[5.1]
  def self.up
    change_table :guards do |t|
      t.attachment :derecho_saber_doc
    end
  end

  def self.down
    remove_attachment :guards, :derecho_saber_doc
  end
end
