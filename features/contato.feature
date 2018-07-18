# language: pt
Funcionalidade: Enviar um contato para o APP TDC DEMO

  Cenário: Enviar um contato
    Dado que esteja na tela inicial do aplicativo
    Quando envio o contato
    Então a mensagem "Contato Salvo" é exibida
