E("acessar a página status") do
  visit '/atualizacoes/status/'
  @status_page.has_h1_title?
end

Então("validar funcionamento do serviço de ativaçao de cartão") do
  @status_page.wait_until_div_services_visible
  service = nil
  @status_page.div_services.size.times do |count|
    service = @status_page.div_services[count] if @status_page.div_services[count].text.eql?('Ativação de cartão')
  end
  expect(service.find('div')['data-tooltip-text']).to eql('Funcionando normalmente')
end
