class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

 def show?
    if record.seller || record == user
      return true
    else
      return false
    end
  end

  def update?
    record == @user
  end
end
