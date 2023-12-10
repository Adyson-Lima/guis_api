class Api::V1::GuisController < ApplicationController

 before_action :set_gui, only: %i[show] # show update destroy

 def index
  @guis = Gui.all 
  render json: @guis
 end

 def show
  render json: @gui
 end

private

def set_gui
  @gui = Gui.find(params[:id])
end

def gui_params
  params.require(:gui).permit(:project, :description)
end

end