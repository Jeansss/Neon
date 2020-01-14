#language: pt

Funcionalidade: Validar texto de idade minima para abertura de conta
  Eu como um usuário da web
  Quero verificar a idade minima para abrir uma conta Neon
  
  @teste1
  Cenário: Validar idade minima para abrir conta Neon
    Dado estar na home do site Neon
    E acessar a página perguntas
    Quando verificar a reposta da pergunta sobre a idade minima para abrir uma conta
    Então devo validar que seja "18"
