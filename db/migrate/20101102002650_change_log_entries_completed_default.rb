class ChangeLogEntriesCompletedDefault < ActiveRecord::Migration
  def self.up
    change_column_default :log_entries, :completed, false
  end

  def self.down
    change_column_default :log_entries, :completed, nil
  end
end

