#  class Calculadora


#      def escolha
#             puts "1 - SOMA"
#             puts "2 - SUBTRAÇÃO"
#             puts "3 - DIVISÃO"
#             puts "4 - MULTIPLICAÇÃO"
#             print "Escolha sua opcao: "
#             opcao = gets.chomp.to_i
        

#          if opcao <= 0 || opcao >= 5
#              puts "Valor indisponivel"
#             else
#                 print "Insira um número: "
#                 first_number = gets.chomp.to_i
#                 print "Insira outro número: "
#                 second_number = gets.chomp.to_i

#                 case opcao
#                 when 1 
#                     soma(first_number,second_number)
#                 end
#             end
#      end

#      def soma(first_number,second_number)
#          result = first_number + second_number
#          result
#      end 

#     end 

#  teste = Calculadora.new

#  teste.escolha

 class Calculadora

    

     def sum(first_number,second_number)
        result = first_number + second_number
        result
     end

     def subtraction(first_number,second_number)
        first_number - second_number
    end

    def division(first_number,second_number)
        first_number / second_number
    end

    def multiplication(first_number,second_number)
        first_number * second_number
        
    end

    def restoDivisão(first_number,second_number)
        result = first_number % second_number
        result.round(2)
    end

    def raizQuadrada(first_number)
        result = Math.sqrt(first_number)
        result
    end

 end

#  FUNÇÃO RESTO
#  FUNÇÃO RAIZ QUADRADA
#  FUNÇÃO DE EXPONENCIAÇÃO