class Questions < SitePrism::Page
  element :h1_title, 'div h1'
  elements :li_questions, '.questions__list li'
end