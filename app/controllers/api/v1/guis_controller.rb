class Api::V1::GuisController < ApplicationController

 before_action :set_gui, only: %i[show update] # show update destroy

 def index
  @guis = Gui.all 
  render json: @guis
 end

 def show
  render json: @gui
 end

 def create
  @gui = Gui.new(gui_params)
  if @gui.save
    render json: @gui, status: :created, location: api_v1_gui_url(@gui)
  else
    render json: @gui.errors, status: :unprocessable_entity
  end
 end

 def update
  if @gui.update(gui_params)
    render json: @gui
  else
    render json: @gui.errors, status: :unprocessable_entity
  end
 end

private

def set_gui
  @gui = Gui.find(params[:id])
end

def gui_params
  params.require(:gui).permit(:project, :description)
end

end