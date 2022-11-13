#Proeto 01 Inova.Ação Afro CESAR
#Autor: Arnaldo Santana dos Santos 

#Hash do menu pincipal
textomenu = { "menu_principal" => ["Selecione a opção desejada: ", "[1] Comprar","[2] Sair"]}

#Hash do menu produtos
textoprodutos = {"menu_produtos" => ["Selecione a opção desejada: ", "[1]Produto A: R$50,00","[2]Produto B: R$100,00","[3]Produto C: R$200,00"]}

#Hash de produtos
produtos = { "Produto A" => 50.00, "Produto B" => 100.00, "Produto C" => 200.00 }

#Chamada do menu principal
puts textomenu["menu_principal"]
op_user = gets.chomp.to_i
system('cls')

#Condição para verificar se a opção é válida
if op_user >2 or op_user <=0
    
    puts "Opção inválida! Escolha uma opção válida."
    puts textomenu ["menu_principal"]
    op_user = gets.chomp.to_i
    system('cls')

else
end

#Variável para armazenar o subtotal
subtotal = 0.00

#Laço de repetição enquanto opção do usuário for igual a 1
while op_user == 1

    #Chamada do menu de produtos
    puts textoprodutos ["menu_produtos"]
    op_userp = gets.chomp.to_i
    system('cls')

    #Condição para verificar se a opção é válida
    if op_userp >3 or op_userp <=0

        puts "Opção inválida! Escolha uma opção válida."
        puts textoprodutos ["menu_produtos"]
        op_userp = gets.chomp.to_i
        system('cls')

    else

    #Condição para avaliar a escolha do usuário
    case op_userp

    when 1    

        puts "Digite a quantidade desejada:"
        op_user = gets.chomp.to_i
        subtotal += produtos['Produto A'] * op_user
        system('cls')
    
        puts "Subtotal: R$#{subtotal}"
        puts "Digite 0 para voltar ao menu principal: "
        op_user = gets.chomp.to_i
        system('cls')

        #Condicional voltar ao menu preincipal
        if op_user == 0  
            puts textomenu["menu_principal"]
            op_user = gets.chomp.to_i
            system('cls')
        else
            break
        end
    
     when 2

        puts "Digite a quantidade desejada:"
        op_user = gets.chomp.to_i
        subtotal += produtos['Produto B'] * op_user
        system('cls')
    
        puts "Subtotal: R$#{subtotal}"
        puts "Digite 0 para voltar ao menu principal: "
        op_user = gets.chomp.to_i

        #Condicional voltar ao menu preincipal
        if op_user == 0  

            puts textomenu["menu_principal"]
            op_user = gets.chomp.to_i
            system('cls')

        else
            break
        end
    
    when 3

        puts "Digite a quantidade desejada:"
        op_user = gets.chomp.to_i
        subtotal += produtos['Produto C'] * op_user
        system('cls')
    
        puts "Subtotal: R$#{subtotal}"
        puts "Digite 0 para voltar ao menu principal: "
        op_user = gets.chomp.to_i

        #Condicional voltar ao menu preincipal
        if op_user == 0  

            puts textomenu["menu_principal"]
            op_user = gets.chomp.to_i
            system('cls')
            
        else
            break
        end

    end

    end 

end

    #Condicional para sair do programa
    if op_user == 2 
        puts "Volte sempre!"
    end