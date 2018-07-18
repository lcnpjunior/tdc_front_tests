require 'calabash-android/calabash_steps'

Dado(/^que esteja na tela inicial do aplicativo$/) do
  sleep 5
  @inputs =  query("android.widget.EditText")
end
  
Quando(/^envio o contato$/) do
  touch(@inputs[0])
  keyboard_enter_text('Teste Meu App TDC')
  hide_soft_keyboard
  touch(@inputs[1])
  keyboard_enter_text('meu_app_tdc@demo.com.br')
  hide_soft_keyboard
  touch("* text:'Continuous Testing'")
  touch("* text:'ENVIAR'")
end

Então(/^a mensagem "([^"]*)" é exibida$/) do |mensagem|
  sleep 5
  expect(query("com.android.internal.widget.DialogTitle id:'alertTitle'").first['text']). to eq mensagem
end