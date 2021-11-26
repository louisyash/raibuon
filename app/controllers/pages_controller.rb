class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [ :home, :index]

  def home
  end
end
