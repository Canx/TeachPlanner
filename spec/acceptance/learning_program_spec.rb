# coding: utf-8
require File.dirname(__FILE__) + '/acceptance_helper.rb'

feature "unidades didácticas", %q{
  Como profesor
  Quiero hacer una lista de unidades didácticas por asignatura
  Para poder elegir que unidades formaran una asignatura en un curso dado 
} do
 
  background do
    Unit.create!(:title => 'Cableado estructurado')
    Program.create!(:module => 'Redes Locales')
  end

  scenario "Add new unit to existing program" do
    visit '/programs/1'
    page.should have_content('Redes Locales')
    #save_and_open_page    
    select "Cableado estructurado", :from => "Unidad"
    click_button "Añadir unidad"
    # - Comprobar en base de datos que se ha vinculado
  end

  scenario "Desvincular unidad didáctica de asignatura" do 
    # Por acabar
    # - Vincular unidad didáctica con asignatura por bases de datos
    # - Seleccionar la asignatura
    # - Hacer click en unidades didácticas 
    # - Comprobar que está la unidad didáctica en la asignatura 
    # - Seleccionar unidad didáctica
    # - Hacer click en quitar unidad didáctica
    # - Comprobar en base de datos que se ha desvinculado
  end
end
