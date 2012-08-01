class Vote < ActiveRecord::Base
  attr_accessible :event_id, :number, :option
end
