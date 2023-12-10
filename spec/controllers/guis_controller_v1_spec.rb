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

  describe 'POST /api/v1/guis' do
    it 'Consegue criar um gui e retornar status 201?' do
      post :create, params: {gui: {project: 'lxde', description: 'ambiente padrão em alguns linux'}, format: :json}
      expect(response.body).to include_json(project: 'lxde')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/guis/id' do
    it 'Consegue atualizar um gui e retornar status 200?' do
      gui = Gui.last
      patch :update,params: {gui: {project: 'matte', description: 'ambiente moderno'}, id: gui.id}
      expect(response.body).to include_json(project: 'matte')
      expect(response).to have_http_status(200)
    end
  end

  describe 'DELETE /api/v1/guis/id' do
    it 'Consegue excluir um gui e retornar status 204?' do
      gui = Gui.last
      delete :destroy, params: {id: gui.id}
      expect(Gui.all).not_to include(gui)
      expect(response).to have_http_status(204)
    end
  end

end