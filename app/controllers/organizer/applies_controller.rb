class Organizer::AppliesController < ApplicationController
  def index
    @applies = Apply.all
  end

  private

  def apply_params
    params.require(:apply).permit(:status)
  end

end
