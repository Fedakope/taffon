class AppliesController < ApplicationController
  def index
    @applies = Apply.all
  end

  def destroy
    @apply = Apply.find(params[:id])
    @apply.destroy
    redirect_to applies_path
  end
end
