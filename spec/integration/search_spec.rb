require 'spec_helper'

describe 'Visit homepage' do
  it 'finds portal homepage' do
    visit '/'
    expect(page).to have_content('Integrarte con un banco ahora')
  end

  it 'finds portal products' do
    visit '/productos'
    expect(page).to have_content('Información del banco')
    expect(page).to have_content('Identificación')
    expect(page).to have_content('Créditos de consumo')
    expect(page).to have_content('Créditos hipotecarios')
    expect(page).to have_content('Cuentas')
    expect(page).to have_content('Comercios')
    expect(page).to have_content('Beneficios')
  end
end
