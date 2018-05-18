class AddBasicFiledsToGuard < ActiveRecord::Migration[5.1]
  def change
      change_table :guards do |t|
        t.string :afiliation
        t.string :prevision
        t.string :contract_type
    end
  end
end
