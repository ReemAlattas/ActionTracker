class FixTableName < ActiveRecord::Migration
  def change
    def self.up
      rename_table :actions, :kactions
    end

    def self.down
      # rename back if you need or do something else or do nothing
    end
  end
end
