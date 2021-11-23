class PerformancesController < ApplicationController

  def index
    @performances = Performance.all
  end
end
