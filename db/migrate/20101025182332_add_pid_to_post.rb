class AddPidToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :pid, :string
  end

  def self.down
    remove_column :posts, :pid
  end
end
