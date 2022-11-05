class LessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def new?
    return create?()
  end

  def create?
    return true
  end

  def edit?
    return update?()
  end

  def update?
    return  record.user == user
  end

  def destroy?
    return record.user == user
  end
end
