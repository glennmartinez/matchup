class Match < ActiveRecord::Base
  attr_accessible :date, :name


  has_many :matchships
  has_many :teams, :through => :matchships
  
end
