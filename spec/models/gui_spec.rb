require 'rails_helper'

RSpec.describe Gui, type: :model do

  before{@gui = Gui.new}

  describe 'Testes de preenchimento do model Gui' do

    it 'project consegue ser preenchido?' do
      @gui.project = 'kde'
      expect(@gui.project).to eq('kde')
    end

  end

end