class LogEntry < ActiveRecord::Base
  belongs_to :user

  validates :description, :presence => true

  scope :most_recent, :order => 'created_at DESC'
  scope :pending, where(:completed => false)
  scope :common, where(:starred => false)

  def complete!
    self.completed = true
    save!
  end

  def favorite!
    self.starred = true
    save!
  end

end

