# coding: utf-8
require File.dirname(__FILE__) + '/acceptance_helper.rb'

feature "unidades didácticas", %q{
  Como profesor
  Quiero hacer una lista de unidades didácticas por asignatura
  Para poder elegir que unidades formaran una asignatura en un curso dado 
} do
 
  background do
    Unit.create!(:title => 'Cableado estructurado')
    Subject.create!(:title => 'Redes Locales')
  end

  scenario "Vincular unidad didáctica a asignatura" do
    visit '/subjects'
    page.should have_content('Subjects')
    # Por acabar
    # - Seleccionar la asignatura
    # - Hacer click en unidades didácticas
    # - Seleccionar unidad didáctica de cableado estructurado
    # - Hacer click en añadir unidad didáctica
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
