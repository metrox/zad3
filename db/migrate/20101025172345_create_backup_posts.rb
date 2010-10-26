class CreateBackupPosts < ActiveRecord::Migration
  def self.up
    create_table :backup_posts do |t|
      t.string :title
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :backup_posts
  end
end
