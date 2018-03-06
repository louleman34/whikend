class TripPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def add_review?
    return true if current_user?
    submission = Submission.find_by(user_id: user.id, trip_id: @record.id)
    return false if submission.nil?
    submission.accepted
  end

  def create?
    true
  end

  def edit?
    current_user?
  end

  def update?
    current_user?
  end

  def destroy?
    current_user?
  end

  def hikes_by_department?
    true
  end

  def automatic?
    @record.auto_accept
  end

  def date_passed?
    @record.date < Date.today
  end

private

  def current_user?
    @record.user == @user
  end

end
