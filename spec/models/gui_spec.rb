require 'rails_helper'

RSpec.describe Gui, type: :model do

  before{@gui = Gui.new}

  describe 'Testes de preenchimento do model Gui' do

    it 'project consegue ser preenchido?' do
      @gui.project = 'kde'
      expect(@gui.project).to eq('kde')
    end

    it 'description consegue ser preenchido?' do
      @gui.description = 'interface rica em recursos'
      expect(@gui.description).to eq('interface rica em recursos')
    end

  end

  describe 'Testes de validação do model Gui' do

    it 'gui valido com todos os campos preenchidos?' do
      @gui.project = 'gnome'
      @gui.description = 'padrão de muitas distros'
      expect(@gui).to be_valid
    end

    it 'gui invalido sem todos os campos preenchidos?' do
      gui = Gui.new
      expect(gui).to be_valid
    end

  end

end