class ArtistPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
<<<<<<< HEAD
    true
=======
    return true
  end

  def create?
    return true
  end

  def new?
    @user = user
>>>>>>> 18518f1a70a28ff09fafce10dd3309684dc41190
  end
end
