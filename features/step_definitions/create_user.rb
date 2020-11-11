Dado('que acesso a tela de cadastro de usuário') do
    @register.access_register_user_screen
end

Quando('preencho o formulário com o nome {string}, sobrenome {string}, email {string}, endereço {string}, universidade {string}, profissão {string}, gênero {string} e idade {string}') do |name, lastname, email, address, university, profession, gender, age|
    @register.fill_form_information(name, lastname, email, address, university, profession, gender, age)
end
  
Quando('clico em Criar') do
    @register.create_user
end
  
Então('visualizo a mensagem {string}') do |msg|
    expect(@register.feedback_message(msg)).to eql true
end

Quando('clico em Voltar') do
    @register.back_screen
end
