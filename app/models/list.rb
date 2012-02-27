class List < ActiveRecord::Base
  
  attr_accessible :name, :description
  
  belongs_to :user
  has_many :tasks
end
