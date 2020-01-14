#language: pt

Funcionalidade: Validar Status Serviço
  Eu como um usuário da web
  Quero verificar se o serviço de ativação de cartão está funcionando

  @teste2
  Cenário: Validar status do serviço Ativação de cartão
    Dado estar na home do site Neon
    E acessar a página status
    Então validar funcionamento do serviço de ativaçao de cartão