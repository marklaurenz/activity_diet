class Activity < ActiveRecord::Base
  has_many :users

  belongs_to :idea

  has_many :favorites

  has_many :fans, :through => :favorites, :source => :user

end
