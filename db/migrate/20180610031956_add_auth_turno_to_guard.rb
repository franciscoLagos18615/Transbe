class AddAuthTurnoToGuard < ActiveRecord::Migration[5.1]
  def self.up
    change_table :guards do |t|
      t.attachment :auth_turno_doc
    end
  end

  def self.down
    remove_attachment :guards, :auth_turno_doc
  end
end
