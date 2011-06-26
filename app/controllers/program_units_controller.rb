class ProgramUnitsController < ApplicationController
  
  def index
    @units=Program.find(params[:program_id]).units
  end

  def new
    #TODO: Obtener las unidades que aun no están en el programa
    @units=Unit.all
  end
end
