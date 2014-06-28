class TournamentAuthorizer < ApplicationAuthorizer
  # Class method: can this user at least sometimes create a Schedule?
  def self.creatable_by?(user)
    user.admin?
  end

  # Instance method: can this user delete this particular schedule?
  def self.deletable_by?(user)
    # resource.in_future? && user.admin? && resource.department == user.department
    user.admin?

  end

  def self.readable_by?(user)

    user.admin?
  	
  end

  def self.updatable_by?(user)

    user.admin?

  end

  def self.getteams(user)
  	
  end

  # def self.updatable_by?(user)

  # 	user.admin?
  	
  # end
end
