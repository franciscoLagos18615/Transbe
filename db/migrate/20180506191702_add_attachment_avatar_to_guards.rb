class AddAttachmentAvatarToGuards < ActiveRecord::Migration[5.1]
  def self.up
    change_table :guards do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :guards, :avatar
  end
end
