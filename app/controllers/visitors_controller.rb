class VisitorsController < ApplicationController
  def index
    @stories = Story.all
  end
end
