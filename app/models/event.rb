class Event < ActiveRecord::Base
  CHOOSE=["yes", "no"]
  
  attr_accessible :event
  has_many :votes
  
end
