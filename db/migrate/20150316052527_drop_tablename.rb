class DropTablename < ActiveRecord::Migration
  def up
    drop_table :creaturelocations
    drop_table :usercreaturemoves
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
