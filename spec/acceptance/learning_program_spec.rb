# coding: utf-8
require File.dirname(__FILE__) + '/acceptance_helper.rb'

feature "unidades didácticas", %q{
  Como profesor
  Quiero hacer una lista de unidades didácticas por asignatura
  Para poder elegir que unidades formaran una asignatura en un curso dado 
} do
 
  background do
    u1=Unit.create!(:title => 'Cableado estructurado')
    u2=Unit.create!(:title => 'Capa fisica')
    u3=Unit.create!(:title => 'Capa de enlace')
    p=Program.create!(:module => 'Redes Locales')
    p.units << u1
    p.units << u2
  end

  scenario "Show units from program" do
    visit '/programs/1'
    click_link 'Units'
    page.should have_content('Cableado estructurado')
    page.should have_content('Capa fisica')
  end

  scenario "Add new unit to existing program" do
    visit '/programs/1'
    page.should have_content('Redes Locales')
    click_link 'Units'
    click_link "Add Unit"
    select "Capa de enlace", :from => "unit[unit_id]"
    click_link "Add"
    # comprobar mensaje
    visit 'programs/1'
    click_link 'Units'
    page.should have_content('Capa de enlace')
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
