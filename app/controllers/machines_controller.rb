class MachinesController < ApplicationController
  # before_action :require_user!

  def index
    @locations = Location.all
    @year_round = Beer.where(category: 'year_round')
    @seasonal = Beer.where(category: 'seasonal')
    @tank_farm = Beer.where(category: 'tank_farm')
    @yeti = Beer.where(category: 'yeti')
    @wood_werks = Beer.where(category: 'wood_werks')
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
