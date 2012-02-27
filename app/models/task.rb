class Task < ActiveRecord::Base

  attr_accessible :name, :description, :due_at

  belongs_to :user
  belongs_to :list
end
