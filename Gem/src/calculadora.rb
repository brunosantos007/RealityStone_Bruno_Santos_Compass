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
        result = first_number % second_number
        result.round(1)
    end


    def raizQuadrada(first_number)
        Math.sqrt(first_number)
    end


    def pi(first_number)
        $valuePi = 3.14
        result = first_number * $valuePi
        result.round(1)
    end

 end