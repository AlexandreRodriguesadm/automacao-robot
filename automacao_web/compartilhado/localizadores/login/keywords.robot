Documentation
... Suíte com palavras chave de login do sistema

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    FakerLibrary     locale=pt_BR
*** Keywords ***
# Algumas keywords ja prontas basta preencher as variaveis e executar os casos de teste
Dado que esteja na tela de login
    Go To           ${homeInicio}
    Click Element   ${paginaLogin}


Quando inserir dados validos
    Wait until page contains element     ${inserirEmailValido}
    Input Text          ${inserirEmailValido}     ${emailValido}
    Click Element       ${continuar}
    Input Text          ${inserirSenhaValida}     ${senhaValida}
    Click Element       ${botaoFazerLogin}

Então devo validar se realmente estou logado
    Wait Until Element Is Visible   ${validacaoLogin}

Quando inserir dados de E-mail inválidos
    ${emailFake}                FakerLibrary.Email

    Wait until page contains element     ${inserirEmailValido}
    Input Text      ${inserirEmailValido}     ${emailFake}
    Click Element   ${continuar}

Então devo obter a mensagem de erro
    Wait Until Element Is Visible       ${erroEmailInvalido}

E Insiro E-mail Válido
    Wait until page contains element     ${inserirEmailValido}
    Input Text      ${inserirEmailValido}     ${emailValido}
    Click Element   ${continuar}

Quando inserir dados de Senha inválidos
    ${passwordFake}             FakerLibrary.Password

    Input Text      ${inserirSenhaValida}     ${passwordFake}
    Click Element   ${botaoFazerLogin}

Então devo obter a mensagem senha incorreta
    Wait Until Element Is Visible   ${erroSenhaIncorreta}

Dado que eu esteja na tela de cadastro
    Go To                                   ${homeInicio}
    Click Element                           ${paginaLogin}
    Wait until page contains element        ${paginaCadastro}
    Click Element                           ${paginaCadastro}

Quando inserir os dados
    ${nomeFake}         FakerLibrary.Name
    ${emailFake}        FakerLibrary.Email
    ${passwordFake}     FakerLibrary.Password
    Wait Until Element Is Visible               ${inserirNomeSobrenome}
    Input Text      ${inserirNomeSobrenome}   ${nomeFake}
    Input Text      ${inserirEmailFake}       ${emailFake}
    Input Text      ${inserirSenhaFake}       ${passwordFake}
    Input Text      ${confirmarSenhaFake}     ${passwordFake}
    Click Element   ${confirmarCadastro}

Então devo validar se fui cadastrado com Sucesso
    sleep   10
    Page Should contain    text=${validarCadastro}

Quando inserir dados de E-mail inválido (Cadastro)
    ${nomeFake}         FakerLibrary.Name
    ${passwordFake}     FakerLibrary.Password
    Wait Until Element Is Visible               ${inserirNomeSobrenome}
    Input Text      ${inserirNomeSobrenome}   ${nomeFake}
    Input Text      ${inserirEmailFake}       ${emailInvalido}
    Input Text      ${inserirSenhaFake}       ${passwordFake}
    Input Text      ${confirmarSenhaFake}     ${passwordFake}
    Click Element   ${confirmarCadastro}

Então devo validar a mensagem que diz E-mail está inválido
    Wait Until Element Is Visible   ${validacaoEmailInvalido}

Quando inserir o dados de senhas divergentes
    ${nomeFake}         FakerLibrary.Name
    ${emailFake}        FakerLibrary.Email
    ${passwordFake}     FakerLibrary.Password
    Wait Until Element Is Visible               ${inserirNomeSobrenome}
    Input Text      ${inserirNomeSobrenome}   ${nomeFake}
    Input Text      ${inserirEmailFake}       ${emailFake}
    Input Text      ${inserirSenhaFake}       ${passwordFake}
    Input Text      ${confirmarSenhaFake}     ${senhaDivergente}
    Click Element   ${confirmarCadastro}

Então devo validar a mensagem que diz senhas não iguais
    Wait Until Element is Visible   ${erroSenhaDivergente}



