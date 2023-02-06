Documentation
... Suíte com variáveis de login do sistema

*** Variable ***

${home_inicio}                  https://www.amazon.com.br/ref=nav_bb_logo   
${pagina_login}                 nav-link-accountList-nav-line-1                 
#(//span[@class='nav-action-inner'][contains(.,'Faça seu login')])[2]
${inserir_email_valido}         ap_email
#${inserir_email_valido}         (//div[@id="ap_email"])[2]
${email_valido}                 Testesautomatizados123@outlook.com
${Continuar}                    continue
${inserir_senha_valida}         ap_password
${senha_valida}                 _q5eARxkWGt9n-3
${botão_fazerlogin}             auth-signin-button
${validação_login}              nav-link-accountList-nav-line-1
${erro_email_invalido}          //span[@class='a-list-item'][contains(.,'Não encontramos uma conta associada a este endereço de e-mail')]
${erro_senha_incorreta}         //span[@class='a-list-item'][contains(.,'Sua senha está incorreta')]
${pagina_cadastro}              createAccountSubmit
#//a[@href='https://www.amazon.com.br/ap/register?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com.br%2F%3F_encoding%3DUTF8%26ref_%3Dnav_custrec_newcust&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=brflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&'][contains(.,'Comece aqui.')]
${inserir_nome_sobrenome}       ap_customer_name
${inserir_email_fake}           ap_email
${inserir_senha_fake}           ap_password
${confirmar_senha_fake}         ap_password_check
${confirmar_cadastro}           continue
${validar_cadastro}             Resolva este quebra-cabeça para proteger sua conta
${EMAIL_INVALIDO}               sidjasuiodahsdaosudhasdhu.com
${validação_email_inválido}     //div[@class='a-alert-content'][contains(.,'Endereço de e-mail ou número de telefone celular errado ou inválido. Corrija e tente novamente.')]
${SENHADIVERGENTE}              dasfgdfh56dcdfg
${ERRO_SENHA_DIVERGENTE}        //div[@class='a-alert-content'][contains(.,'As senhas não são iguais')]