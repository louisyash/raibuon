class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [ :home, :index]

  def home
    @performances = policy_scope(Performance).order(created_at: :desc)

    @markers = @performances.geocoded.map do |performance|
      {
        lat: performance.latitude,
        lng: performance.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { performance: performance })
      }
    end
    authorize @performances
  end
end
