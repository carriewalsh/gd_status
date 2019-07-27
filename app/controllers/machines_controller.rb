class MachinesController < ApplicationController
  # before_action :require_user!

  def index
    @locations = Location.all
  end

  def update

  end
end
