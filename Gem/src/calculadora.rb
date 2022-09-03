class Calculadora

    

     def sum(first_number,second_number)
        first_number + second_number
     end

     def subtraction(first_number,second_number)
        result = first_number - second_number
        result.round(1)
    end

    def division(first_number,second_number)
        result = first_number / second_number
        result.round(1)
    end

    def multiplication(first_number,second_number)
        result = first_number * second_number
        result.round(1)
    end

    def restoDivisao(first_number,second_number)
        first_number % second_number
        # result.round(2)
    end

    def raizQuadrada(first_number)
        result = Math.sqrt(first_number)
        result
    end

 end

#  FUNÇÃO RESTO
#  FUNÇÃO RAIZ QUADRADA
#  FUNÇÃO DE EXPONENCIAÇÃO