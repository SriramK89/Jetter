class Jet < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, :presence => true,
                      :length => { :maximum => 140 }

  belongs_to :user
end