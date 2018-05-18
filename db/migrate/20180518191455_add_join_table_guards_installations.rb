class AddJoinTableGuardsInstallations < ActiveRecord::Migration[5.1]
  def change
    create_join_table :guards, :installations
  end
end
