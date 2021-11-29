class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [ :home, :index]

  def home
    @performances = policy_scope(Performance).order(created_at: :desc)
    authorize @performances

  end
end
