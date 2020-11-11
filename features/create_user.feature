#language: pt

@user_register
Funcionalidade: Criar cadastro de usuário

@user_register_1
Esquema do Cenário: Cadastro de usuário
    Dado que acesso a tela de cadastro de usuário
    Quando preencho o formulário com o nome <name>, sobrenome <lastname>, email <email>, endereço <address>, universidade <university>, profissão <profession>, gênero <gender> e idade <age> 
    E clico em Criar
    Então visualizo a mensagem <message>
    Exemplos:
        |  name  |lastname|      email            |address|university|profession|gender|age |                     message                    |
        |''      |'Flores'|'maria.flores@mail.com'|'A2'   |'N/A'     |'QA'      |'F'   |'29'|'1 error proibiu que este usuário fosse salvo:' |
        |'Maria' |'Flores'|''                     |'A2'   |'N/A'     |'QA'      |'F'   |'29'|'2 errors proibiu que este usuário fosse salvo:'|
        |'Maria' |'Flores'|'maria.flores@mail.com'|'A2'   |'N/A'     |'QA'      |'F'   |'29'|'Usuário Criado com sucesso'                    |

@user_register_2
Cenário: Validar botão Voltar no formulário de cadastro
Dado que acesso a tela de cadastro de usuário
Quando clico em Voltar
Então visualizo a tela home do sistema
