class MachinesController < ApplicationController
  # before_action :require_user!

  def index
    @locations = Location.all
  end

  def update
    machine = Machine.find(update_params[:id])
    machine.update(update_params)
    redirect_to dashboard_path
  end


  private

    def update_params
      params.require(:machine).permit(:id, :status)
    end
end
