class Event < ActiveRecord::Base
  attr_accessible :event
  has_many :votes
end
