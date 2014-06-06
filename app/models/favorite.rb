class Favorite < ActiveRecord::Base
  belongs_to :user

  belongs_to :activity

  validates :user_id, :presence => true, :uniqueness => { :scope => :activity_id }

  validates :activity_id, :presence => true
end
