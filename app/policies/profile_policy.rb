class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    return true
  end

  def show?
    return true if record.user == user || user.email == 'admin1@gmail.com' || user.email == 'admin2@gmail.com'
  end

end
