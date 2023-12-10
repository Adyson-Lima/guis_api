require 'rails_helper'

RSpec.describe Api::V1::GuisController, type: :controller do

  before{@gui = Gui.create(project: 'xfce', description: 'ambiente grafico leve')}

  describe 'GET /api/v1/guis' do
    it 'Consegue listar todos os guis e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200) 
    end
  end

  describe 'GET /api/v1/guis/id' do
    it 'Consegue listar um gui especifico e retornar status 200?' do
      get :show, params: {id: @gui.id}
      expect(response.body).to include_json(id: @gui.id)
      expect(response).to have_http_status(200)
    end
  end

end