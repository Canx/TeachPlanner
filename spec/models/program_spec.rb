require 'spec_helper'

describe Program do
  before do
    @u1 = Unit.create!(:title => "Cableado estructurado")
    @u2 = Unit.create!(:title => "Nivel fisico")
    @redes = Program.create!(:module => "Redes Locales")
  end

  it "should add some units" do
    lambda {
      @redes.units << @u1
      @redes.units << @u2
    }.should change(@redes.units, :count).by(2)
  end
end
