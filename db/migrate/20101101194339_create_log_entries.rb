class CreateLogEntries < ActiveRecord::Migration
  def self.up
    create_table :log_entries do |t|
      t.belongs_to :user
      t.text       :description
      t.boolean    :obsolete
      t.boolean    :completed
      t.boolean    :starred, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :log_entries
  end
end

