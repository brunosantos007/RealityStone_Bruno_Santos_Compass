class Calculadora

    def soma(first_number, second_number)
        print "Escolha o primeiro número: "
        first_number = gets.chomp.to_i
        print "Escolha o segundo número: "
        second_number = gets.chomp.to_i
        result = first_number + second_number
        puts "Resultado de: #{first_number} + #{second_number} = #{result}"
    end

    def subtracao(a,b)
        a - b
    end

    def escolha
        puts "1 - SOMA"
        puts "2 - SUBTRAÇÃO"
        puts "3 - DIVISÃO"
        puts "4 - MULTIPLICAÇÃO"
        print "Escolha sua opcao:"

        opcao = gets.chomp.to_i
        escolha = Calculadora.new
        

        case opcao 
            when 1
                soma(first_number,second_number)
            else
                puts "Não foi possivel achar o número!"

        end

    end


    

    

end 

teste = Calculadora.new

teste.escolha
teste.soma
