class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    #def resolve
    #  scope.all
    #end

  end
  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end

  def accept?
    true
  end

  def refuse?
    accept?
  end

  def cancel?
    accept?
  end
end
