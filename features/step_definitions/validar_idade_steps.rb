Dado("estar na home do site Neon") do
  @home_page.load
end

E("acessar a página perguntas") do
  visit '/perguntas'
  @questions_page.has_h1_title?
end

Quando("verificar a reposta da pergunta sobre a idade minima para abrir uma conta") do
  @questions_page.wait_until_li_questions_visible
  @questions_page.li_questions[8].click
end

Então("devo validar que seja {string}") do |idade|
  response = @questions_page.li_questions[8].find('.questions__list-item-content').text.match(/\d+/)[0]
  expect(response).to eql(idade)
end
