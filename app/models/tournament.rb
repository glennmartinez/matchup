class Tournament < ActiveRecord::Base
  attr_accessible :name, :status

   attr_protected :id

  has_many :matches
  has_many :tournamentships
  has_many :teams, :through => :tournamentships

  accepts_nested_attributes_for :teams


end
