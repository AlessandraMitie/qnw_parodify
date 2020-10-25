Dado('que acesso a página de cadastro') do
    visit "http://parodify.qaninja.com.br"
    click_on "EXPERIMENTE AGORA"
end
  
Quando('submeto o meu cadastro com:') do |table|
    #definir variável user que vai receber a tabela
    user = table.rows_hash

    delorean user[:email]
    #vai chamar o método definido em helpers.rb

    find("input[name*=email]").set user[:email]
    #CSS selector: input[name*=email] -> input é o nome do elemento
    #expressão regular: usar o * para encontrar um elemento através do contains. Então a busca é: elemento input cuja propriedade name contém o valor email
    # [:email] -> através da chave, vai ter acesso à informação de email, e vai preencher o campo
    find("input[placeholder='Sua senha secreta']").set user[:senha]
    find("input[placeholder='Confirme a senha']").set user[:senha_confirma]

    click_on "Cadastrar"
end
  
Então('devo ser redirecionado para a área logada') do
    expect(page).to have_css '.dashboard'
    #a página (que é um objeto do Capybara) deve conter o css .dashboard. Se tiver esse seletor, o teste passou
    #expect é um recurso do rspec.
end