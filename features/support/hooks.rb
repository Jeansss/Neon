Before do
  page.driver.browser.manage.window.maximize
  @home_page = Home.new
  @status_page = Status.new
  @questions_page = Questions.new
end

After do |scenario|
  nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome_cenario = nome_cenario.tr(' ', '_').downcase!
  screenshot = "log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Evidência')
  Capybara.current_session.driver.quit
end