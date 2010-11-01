class LogEntry < ActiveRecord::Base
  belongs_to :user

  validates :description, :presence => true

  scope :most_recent, :order => 'created_at DESC'
end

