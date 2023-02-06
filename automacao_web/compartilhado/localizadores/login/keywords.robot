Documentation
... Suíte com palavras chave de login do sistema

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    FakerLibrary     locale=pt_BR
*** Keywords ***
# Algumas keywords ja prontas basta preencher as variaveis e executar os casos de teste
Dado que esteja na tela de login
    Go To           ${home_inicio}
    Click Element   ${pagina_login}


Quando inserir dados validos
    Wait until page contains element     ${inserir_email_valido}
    Input Text          ${inserir_email_valido}     ${email_valido}
    Click Element       ${Continuar}
    Input Text          ${inserir_senha_valida}     ${senha_valida}
    Click Element       ${botão_fazerlogin}

Então devo validar se realmente estou logado
    Wait Until Element Is Visible   ${validação_login}

Quando inserir dados de E-mail inválidos
    ${EMAILFAKE}                FakerLibrary.Email

    Wait until page contains element     ${inserir_email_valido}
    Input Text      ${inserir_email_valido}     ${EMAILFAKE}
    Click Element   ${Continuar}

Então devo obter a mensagem de erro
    Wait Until Element Is Visible       ${erro_email_invalido}

E Insiro E-mail Válido
    Wait until page contains element     ${inserir_email_valido}
    Input Text      ${inserir_email_valido}     ${email_valido}
    Click Element   ${Continuar}

Quando inserir dados de Senha inválidos
    ${PASSWORDFAKE}             FakerLibrary.Password

    Input Text      ${inserir_senha_valida}     ${PASSWORDFAKE}
    Click Element   ${botão_fazerlogin}

Então devo obter a mensagem senha incorreta
    Wait Until Element Is Visible   ${erro_senha_incorreta}

Dado que eu esteja na tela de cadastro
    Go To                                   ${home_inicio}
    Click Element                           ${pagina_login}
    Wait until page contains element        ${pagina_cadastro}
    Click Element                           ${pagina_cadastro}

Quando inserir os dados
    ${NOMEFAKE}         FakerLibrary.Name
    ${EMAILFAKE}        FakerLibrary.Email
    ${PASSWORDFAKE}     FakerLibrary.Password
    Wait Until Element Is Visible               ${inserir_nome_sobrenome}
    Input Text      ${inserir_nome_sobrenome}   ${NOMEFAKE}
    Input Text      ${inserir_email_fake}       ${EMAILFAKE}
    Input Text      ${inserir_senha_fake}       ${PASSWORDFAKE}
    Input Text      ${confirmar_senha_fake}     ${PASSWORDFAKE}
    Click Element   ${confirmar_cadastro}

Então devo validar se fui cadastrado com Sucesso
    sleep   10
    Page Should contain    text=${validar_cadastro}

Quando inserir dados de E-mail inválido (Cadastro)
    ${NOMEFAKE}         FakerLibrary.Name
    ${PASSWORDFAKE}     FakerLibrary.Password
    Wait Until Element Is Visible               ${inserir_nome_sobrenome}
    Input Text      ${inserir_nome_sobrenome}   ${NOMEFAKE}
    Input Text      ${inserir_email_fake}       ${EMAIL_INVALIDO}
    Input Text      ${inserir_senha_fake}       ${PASSWORDFAKE}
    Input Text      ${confirmar_senha_fake}     ${PASSWORDFAKE}
    Click Element   ${confirmar_cadastro}

Então devo validar a mensagem que diz E-mail está inválido
    Wait Until Element Is Visible   ${validação_email_inválido}

Quando inserir o dados de senhas divergentes
    ${NOMEFAKE}         FakerLibrary.Name
    ${EMAILFAKE}        FakerLibrary.Email
    ${PASSWORDFAKE}     FakerLibrary.Password
    Wait Until Element Is Visible               ${inserir_nome_sobrenome}
    Input Text      ${inserir_nome_sobrenome}   ${NOMEFAKE}
    Input Text      ${inserir_email_fake}       ${EMAILFAKE}
    Input Text      ${inserir_senha_fake}       ${PASSWORDFAKE}
    Input Text      ${confirmar_senha_fake}     ${SENHADIVERGENTE}
    Click Element   ${confirmar_cadastro}

Então devo validar a mensagem que diz senhas não iguais
    Wait Until Element is Visible   ${ERRO_SENHA_DIVERGENTE}



