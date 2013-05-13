class Match < ActiveRecord::Base
  attr_accessible :date, :name

  attr_protected :id
  
  has_many :matchships
  has_many :teams , :through => :matchships
  
  accepts_nested_attributes_for :teams
end
