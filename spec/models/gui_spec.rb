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

end