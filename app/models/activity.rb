class Activity < ActiveRecord::Base
  has_many :users
  belongs_to :idea
end
