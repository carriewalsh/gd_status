class MachinesController < ApplicationController
  before_action :require_user!

  def index
    binding.pry
    @machines = Machine.all
  end
end
