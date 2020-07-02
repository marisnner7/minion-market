class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def show?
    true
  end

  def create?
    user_is_seller?
  end

  def update?
    user_is_seller? && record.user == user
  end

  def destroy?
    user_is_seller || user_is_admin?
  end

  private

  def user_is_seller?
    user.seller
  end
end
