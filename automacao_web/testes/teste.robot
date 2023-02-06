Documentation
...Suíte com testes de Login e Cadastro

*** Settings ***
Resource                  ../compartilhado/localizadores/login/keywords.robot
Resource                  ../compartilhado/localizadores/login/variables.robot
Resource                  ../compartilhado/recursos/recursos_comuns.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***

Test Case 01: Tentativa de Login - com Sucesso
    Dado que esteja na tela de login
    Quando inserir dados validos
    Então devo validar se realmente estou logado

Test Case 02: Tentativa de Login com E-mail inválido - sem Sucesso
    Dado que esteja na tela de login
    Quando inserir dados de E-mail inválidos
    Então devo obter a mensagem de erro

Test Case 03: Tentativa de Login com Senha inválida - sem Sucesso
    Dado que esteja na tela de login
    E Insiro E-mail Válido
    Quando inserir dados de Senha inválidos
    Então devo obter a mensagem senha incorreta

Test Case 04: Tentativa de Cadastro com dados genéricos - com Sucesso
    Dado que eu esteja na tela de cadastro
    Quando inserir os dados
    Então devo validar se fui cadastrado com Sucesso

Test Case 05: Tentativa de Cadastro com E-mail inválido - sem Sucesso
    Dado que eu esteja na tela de cadastro
    Quando inserir dados de E-mail inválido (Cadastro)
    Então devo validar a mensagem que diz E-mail está inválido

Test Case 06: Tentativa de Cadastro com Senhas divergentes - sem Sucesso
    Dado que eu esteja na tela de cadastro
    Quando inserir o dados de senhas divergentes
    Então devo validar a mensagem que diz senhas não iguais
