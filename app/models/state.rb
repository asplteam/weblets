class State < ActiveRecord::Base
  attr_accessible :name, :state_code

      has_many :users

end
