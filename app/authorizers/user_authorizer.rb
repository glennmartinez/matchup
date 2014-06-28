class UserAuthorizer < ApplicationAuthorizer
  # Class method: can this user at least sometimes create a Schedule?
  def self.creatable_by?(user)
  end

  # Instance method: can this user delete this particular schedule?
  def self.deletable_by?(user)
    # resource.in_future? && user.admin? && resource.department == user.department
    user.has_role? :admin

  end

  def self.readable_by?(user)

  	
  end

  def self.updatable_by?(user)

  	 user.has_role? :admin 

  end



  # def self.updatable_by?(user)

  # 	user.admin?
  	
  # end
end