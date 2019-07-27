class MachinesController < ApplicationController
  before_action :require_user!

  def index
    @machines = Machine.all
  end
end
