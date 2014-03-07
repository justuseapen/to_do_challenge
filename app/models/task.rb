class Task < ActiveRecord::Base
  validates_presence_of :title
  
  def mark_complete
    self.completed = true
    self.save
  end
end
