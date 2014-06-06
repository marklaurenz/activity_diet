class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :activities

  has_many :clicks

  has_many :favorites

  has_many :favorite_activities, :through => :favorites, :source => :activity

end
