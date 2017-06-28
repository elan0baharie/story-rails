class Usersentence < ActiveRecord::Base
  belongs_to :story

  validates :sentence, :presence => true
  validates :user, :presence => true
  
end
