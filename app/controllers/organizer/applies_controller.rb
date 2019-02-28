class Organizer::AppliesController < ApplicationController
  def index
    @applies = Apply.all
  end
end
