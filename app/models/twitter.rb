class Twitter < ActiveRecord::Base
  attr_accessible :body

  # Validate tweet
  validates :body, :presence => true

  # Must be between 1 and 140 characters
  validates :body, :length => { :minimum => 1 }
  validates :body, :length => { :maximum => 140 }
end
