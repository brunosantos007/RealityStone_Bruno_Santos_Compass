require "rspec"
require "pry"
require_relative "../src/calculadora.rb"


describe("Calculadora :") do
    calculadora = Calculadora.new

# TESTE SOMA:

    "-------------CORRETOS-------------"

    it("SOMA - Deve somar dois números inteiros positivos.") do 
        first_number = 5
        second_number = 5
        expect(calculadora.sum(first_number,second_number)).to eq 10
    end

    it("SOMA - Deve somar dois números inteiros negativos.") do 
        first_number = -5
        second_number = -5
        expect(calculadora.sum(first_number,second_number)).to eq -10
    end

    it("SOMA - Deve somar dois números inteiros positivos com casas decimais.") do 
        first_number = 50.5
        second_number = 70.6
        expect(calculadora.sum(first_number,second_number)).to eq 121.1
    end

    it("SOMA - Deve somar dois números inteiros negativos com casas decimais.") do 
        first_number = -50.5
        second_number = -70.6
        expect(calculadora.sum(first_number,second_number)).to eq -121.1
    end

    it("SOMA - Deve obter o resultado da SOMA utilizando o número 0") do
        first_number = 5
        second_number = 0
        expect(calculadora.sum(first_number,second_number)).to eq 5
    end

    it("SOMA - Deve obter o resultado da SOMA de dois números iguais a zero") do
        first_number = 0
        second_number = 0
        expect(calculadora.sum(first_number,second_number)).to eq 0
    end

    it("SOMA - O resultado da soma deve ser do tipo Float.") do 
        first_number = 50.5
        second_number = 70.6
        # Resposta = 121.1
        expect(calculadora.sum(first_number,second_number)).to be_kind_of(Float)
    end

    it("SOMA - O resultado da soma deve ser do tipo Númerico.") do 
        first_number = 5
        second_number = 5
        expect(calculadora.sum(first_number,second_number)).to be_kind_of(Numeric)
    end

    "-------------ERRADOS-------------"

    it("SOMA - Um dos números não deve ser nulo") do 
        first_number = 5
        second_number = 
        expect(calculadora.sum(first_number,second_number)).not_to be_nil
    end

    it("SOMA - O resultado da soma de números inteiros não deve ser do tipo String") do 
        first_number = 5
        second_number = "5"
        expect(calculadora.sum(first_number,second_number)).to be_kind_of(Numeric)
    end

    it("SOMA - O resultado da soma de números com casas decimais não deve ser do tipo String.") do 
        first_number = 50.0
        second_number = "70.0"
        expect(calculadora.sum(first_number,second_number)).to be_kind_of(Float)
    end

     it("SOMA - Não deve haver caracteres especiais nas escolhas dos números positivos.") do 
        first_number = 5
        second_number = "$"
        expect(calculadora.sum(first_number,second_number)).to be_kind_of(Numeric)
     end

    it("SOMA - Não deve haver caracteres especiais nas escolhas dos números com casas decimais.") do 
        first_number = 10.5
        second_number = "$"
        expect(calculadora.sum(first_number,second_number)).to be_kind_of(Float)
    end


# TESTE SUBTRAÇÃO

    "-------------CORRETOS-------------"

    it("SUBTRAÇÃO - Deve subtrair dois números inteiros positivos.") do 
        first_number = 10
        second_number = 5
        expect(calculadora.subtraction(first_number,second_number)).to eq 5
    end

    it("SUBTRAÇÃO - Deve subtrair dois números inteiros negativos.") do 
        first_number = -10
        second_number = -5
        expect(calculadora.subtraction(first_number,second_number)).to eq -5
    end

    it("SUBTRAÇÃO - Deve subtrair dois números inteiros positivos com casas decimais.") do 
         first_number = 50.5
         second_number = 70.6
         expect(calculadora.subtraction(first_number,second_number)).to eq -20.1
    end

    it("SUBTRAÇÃO - Deve subtrair dois números inteiros negativos com casas decimais.") do 
        first_number = -50.5
        second_number = -70.6
        expect(calculadora.subtraction(first_number,second_number)).to eq 20.1
   end

    it("SUBTRAÇÃO - Deve obter o resultado da SUBTRAÇÃO utilizando o número 0") do
        first_number = 5
        second_number = 0
        expect(calculadora.subtraction(first_number,second_number)).to eq 5
    end

    it("SUBTRAÇÃO - Deve obter o resultado da SUBTRAÇÃO de dois números iguais a zero") do
        first_number = 0
        second_number = 0
        expect(calculadora.subtraction(first_number,second_number)).to eq 0
    end

    it("SUBTRAÇÃO - O resultado da subtração com casas decimais deve ser do tipo Float") do 
        first_number = 50.5
        second_number = 70.6
        expect(calculadora.subtraction(first_number,second_number)).to be_kind_of(Float)
    end

    it("SUBTRAÇÃO - O resultado da subtração com casas decimais deve ser do tipo Númerico") do 
        first_number = 10
        second_number = 5
        expect(calculadora.subtraction(first_number,second_number)).to be_kind_of(Numeric)
    end

    it("SUBTRAÇÃO - Subtrair dois número sendo o primeiro menor que o segundo.") do 
        first_number = 20
        second_number = 50
        expect(calculadora.subtraction(first_number,second_number)).to eq -30
    end

    "-------------ERRADOS-------------"

    it("SUBTRAÇÃO - Um dos números não deve ser nulo.") do 
        first_number = 5
        second_number = 
        expect(calculadora.subtraction(first_number,second_number)).not_to be_nil
    end

    it("SUBTRAÇÃO - O resultado da subtração não deve ser do tipo String") do 
        first_number = 20
        second_number = "50"
        expect(calculadora.subtraction(first_number,second_number)).to be_kind_of(Numeric)
    end

    it("SUBTRAÇÃO - O resultado da subtração com casas decimais não deve ser do tipo String") do 
        first_number = 50.5
        second_number = "70.6"
        expect(calculadora.subtraction(first_number,second_number)).to be_kind_of(Float)
    end

    it("SUBTRAÇÃO - Não deve haver caracteres especiais nas escolhas dos números inteiros.") do 
        first_number = 5
        second_number = "$"
        expect(calculadora.subtraction(first_number,second_number)).to be_kind_of(Numeric)
    end

    it("SUBTRAÇÃO - Não deve haver caracteres especiais nas escolhas dos números com casas decimais.") do 
        first_number = 10.5
        second_number = "$"
        expect(calculadora.subtraction(first_number,second_number)).to be_kind_of(Float)
    end
    

# TESTE DIVISÃO

    "-------------CORRETOS-------------"

    it("DIVISÃO - Deve dividir dois números inteiros positivos.") do 
        first_number = 10
        second_number = 5
        expect(calculadora.division(first_number,second_number)).to eq 2
    end

    it("DIVISÃO - Deve dividir dois números inteiros sendo um negativo.") do 
        first_number = -10
        second_number = 5
        expect(calculadora.division(first_number,second_number)).to eq -2
    end

    it("DIVISÃO - Deve dividir dois números inteiros sendo os dois negativos.") do 
        first_number = -10
        second_number = -5
        expect(calculadora.division(first_number,second_number)).to eq 2
    end

    it("DIVISÃO - Deve dividir dois números inteiros com casas decimais.") do 
        first_number = 70.6
        second_number = 50.5
        expect(calculadora.division(first_number,second_number)).to eq 1.4
   end

    it("DIVISÃO - Deve dividir dois números inteiros negativos com casas decimais.") do 
        first_number = -70.6
        second_number = -50.5
        expect(calculadora.division(first_number,second_number)).to eq 1.4
    end

   it("DIVISÃO - O resultado da divisão dos numeros com casas decimais deve ser do tipo FLOAT") do 
        first_number = 70.6
        second_number = 50.5
        expect(calculadora.division(first_number,second_number)).to be_kind_of(Float)
    end

    it("DIVISÃO - O resultado da divisão dos numeros inteiros deve ser do tipo Numerico") do 
        first_number = 10
        second_number = 5
        expect(calculadora.division(first_number,second_number)).to be_kind_of(Numeric)
    end

    "-------------ERRADOS-------------"

    it("DIVISÃO - Um dos números não deve ser nulo.") do 
        first_number = 5
        second_number = 
        expect(calculadora.division(first_number,second_number)).not_to be_nil
    end

     it("DIVISÃO - O resultado da divisão não deve ser do tipo String") do 
        first_number = 20
        second_number = "50"
        expect(calculadora.division(first_number,second_number)).to be_kind_of(Numeric)
     end

     it("DIVISÃO - O resultado da divisão com casas decimais não deve ser do tipo String") do 
        first_number = 50.5
        second_number = "70.6"
        expect(calculadora.division(first_number,second_number)).to be_kind_of(Float)
     end

    it("DIVISÃO - Não aceita o resultado da DIVISÃO utilizando o número 0") do
        first_number = 5
        second_number = 0
        expect(calculadora.division(first_number,second_number)).to be_falsey
    end

     it("DIVISÃO - Não aceita o resultado da DIVISÃO de dois números iguais a zero") do
        first_number = 0
        second_number = 0
        expect(calculadora.division(first_number,second_number)).to be_falsey
     end

    it("DIVISÃO - Não deve haver caracteres especiais nas escolhas dos números inteiros.") do 
        first_number = 5
        second_number = "$"
        expect(calculadora.division(first_number,second_number)).to be_kind_of(Numeric)
    end

    it("DIVISÃO - Não deve haver caracteres especiais nas escolhas dos números com casas decimais.") do 
        first_number = 10.5
        second_number = "$"
        expect(calculadora.division(first_number,second_number)).to be_kind_of(Float)
    end

# TESTE MULTIPLICAÇÃO

    "-------------CORRETOS-------------"

    it("MULTIPLICAÇÃO - Deve multiplicar dois números inteiros positivos.") do 
        first_number = 10
        second_number = 5
        expect(calculadora.multiplication(first_number,second_number)).to eq 50
    end

    it("MULTIPLICAÇÃO - Deve multiplicar dois números inteiros sendo um negativo.") do 
        first_number = -10
        second_number = 5
        expect(calculadora.multiplication(first_number,second_number)).to eq -50
    end

    it("MULTIPLICAÇÃO - Deve multiplicar dois números inteiros sendo os dois negativos.") do 
        first_number = -10
        second_number = -5
        expect(calculadora.multiplication(first_number,second_number)).to eq 50
    end

    it("MULTIPLICAÇÃO - Deve multiplicar dois números inteiros com casas decimais.") do 
        first_number = 70.6
        second_number = 50.5
        expect(calculadora.multiplication(first_number,second_number)).to eq 3565.3
   end

    it("MULTIPLICAÇÃO - Deve multiplicar dois números com casas decimais sendo um deles negativo.") do 
        first_number = 70.6
        second_number = -50.5
        expect(calculadora.multiplication(first_number,second_number)).to eq -3565.3
    end

    it("MULTIPLICAÇÃO - Deve multiplicar dois números negativos com casas decimais.") do 
        first_number = -70.6
        second_number = -50.5
        expect(calculadora.multiplication(first_number,second_number)).to eq 3565.3
    end

    it("MULTIPLICAÇÃO - Deve obter o resultado da MULTIPLICAÇÃO utilizando o número 0") do
        first_number = 5
        second_number = 0
        expect(calculadora.multiplication(first_number,second_number)).to eq 0
    end

    it("MULTIPLICAÇÃO - Deve obter o resultado da MULTIPLICAÇÃO de dois números iguais a zero") do
        first_number = 0
        second_number = 0
        expect(calculadora.multiplication(first_number,second_number)).to eq 0
    end

   it("MULTIPLICAÇÃO - O resultado da multiplicação dos numeros com casas decimais deve ser do tipo FLOAT") do 
        first_number = 70.6
        second_number = 50.5
        expect(calculadora.multiplication(first_number,second_number)).to be_kind_of(Float)
    end

    it("MULTIPLICAÇÃO - O resultado da multiplicação dos numeros inteiros deve ser do tipo Numerico") do 
        first_number = 70
        second_number = 50
        expect(calculadora.multiplication(first_number,second_number)).to be_kind_of(Numeric)
    end 

    "-------------ERRADOS-------------"

    it("MULTIPLICAÇÃO - Um dos números não deve ser nulo.") do 
        first_number = 5
          second_number = 
          expect(calculadora.multiplication(first_number,second_number)).not_to be_nil
    end

    it("MULTIPLICAÇÃO - O resultado da multiplicação não deve ser do tipo String") do 
           first_number = 20
           second_number = "50"
           expect(calculadora.multiplication(first_number,second_number)).to be_kind_of(Numeric)
    end

    it("MULTIPLICAÇÃO - O resultado da multiplicação com casas decimais não deve ser do tipo String") do 
           first_number = 50.5
           second_number = "70.6"
           expect(calculadora.multiplication(first_number,second_number)).to be_kind_o(Float)
    end

    it("MULTIPLICAÇÃO - Não deve haver caracteres especiais nas escolhas dos números inteiros.") do 
        first_number = 5
        second_number = "$"
        expect(calculadora.multiplication(first_number,second_number)).to be_kind_of(Numeric)
    end

    it("MULTIPLICAÇÃO - Não deve haver caracteres especiais nas escolhas dos números com casas decimais.") do 
        first_number = 10.5
        second_number = "$"
        expect(calculadora.multiplication(first_number,second_number)).to be_kind_of(Float)
    end

# TESTE RESTO DA DIVISÃO

    "-------------CORRETOS-------------"

    it("RESTO - Deve mostrar o resto da divisão entre dois numeros inteiros.") do
        first_number = 10
        second_number = 5
        expect(calculadora.restoDivisao(first_number,second_number)).to be == 0
    end

    it("RESTO - Deve mostrar o resto da divisão entre dois números inteiros sendo um negativo.") do
        first_number = -12
        second_number = 5
        expect(calculadora.restoDivisao(first_number,second_number)).to eq 3
    end

    it("RESTO - Deve mostrar o resto da divisão entre dois números inteiros sendo os dois números negativos.") do
        first_number = -12
        second_number = -5
        expect(calculadora.restoDivisao(first_number,second_number)).to eq -2
    end

    it("RESTO - Deve mostrar o resto da divisão entre dois números inteiros com casas decimais.") do
        first_number = 3.4
        second_number = 2
        expect(calculadora.restoDivisao(first_number,second_number)).to eq 1.4
    end

    it("RESTO - Deve mostrar o resto da divisão entre dois números inteiros com casas decimais sendo um deles negativo.") do
        first_number = -3.4
        second_number = 2
        expect(calculadora.restoDivisao(first_number,second_number)).to eq 0.6
    end

    it("RESTO - Deve mostrar o resto da divisão entre dois números negativos com casas decimais sendo os dois negativo.") do
        first_number = -3.4
        second_number = -2
        expect(calculadora.restoDivisao(first_number,second_number)).to eq -1.4
    end

    it("RESTO - O resultado do resto da divisão dos numeros com casas decimais deve ser do tipo FLOAT") do 
        first_number = 70.6
        second_number = 50.5
        expect(calculadora.restoDivisao(first_number,second_number)).to be_kind_of(Float)
    end

    it("RESTO - O resultado do resto da divisão dos numeros inteiros deve ser do tipo Numerico") do 
        first_number = 70
        second_number = 50
        expect(calculadora.restoDivisao(first_number,second_number)).to be_kind_of(Numeric)
    end 

    "-------------ERRADOS-------------"

    it("RESTO - A escolha de um dos números não deve ser nula.") do
          first_number = 10
          second_number = 
          expect(calculadora.restoDivisao(first_number,second_number)).not_to be_nil
    end

    it("RESTO - Não deve aceitar um dos números escolhidos como zero") do
        first_number = 5
        second_number = 0
        expect(calculadora.restoDivisao(first_number,second_number)).to be_falsey
    end

    it("RESTO - Não deve aceitar dois números escolhidos como zero") do
        first_number = 0
        second_number = 0
        expect(calculadora.restoDivisao(first_number,second_number)).to be_falsey
    end

    it("RESTO - O resultado do resto da divisão não deve ser do tipo String") do 
            first_number = 20
            second_number = "50"
            expect(calculadora.restoDivisao(first_number,second_number)).to be_kind_of(Numeric)
    end

    it("RESTO - O resultado do resto da divisão com casas decimais não deve ser do tipo String") do 
            first_number = 50.5
            second_number = "70.6"
            expect(calculadora.restoDivisao(first_number,second_number)).to be_kind_of(Float)
    end

    it("RESTO - Não deve haver caracteres especiais nas escolhas dos números inteiros.") do 
            first_number = 5
            second_number = "$"
            expect(calculadora.restoDivisao(first_number,second_number)).to be_kind_of(Numeric)
    end

    it("RESTO - Não deve haver caracteres especiais nas escolhas dos números com casas decimais.") do 
            first_number = 10.5
            second_number = "$"
            expect(calculadora.restoDivisao(first_number,second_number)).to be_kind_of(Float)
    end

# TESTE RAIZ QUADRADA

    "-------------CORRETOS-------------"

    it("RAIZ QUADRADA - Deve obter a raiz quadrada do número especificado.") do
        first_number = 25
        expect(calculadora.raizQuadrada(first_number)).to eq 5
    end

    it("RAIZ QUADRADA - Deve obter a raiz quadrada de números com casas decimais.") do
        first_number = 1.69
        expect(calculadora.raizQuadrada(first_number)).to eq 1.3
    end

    it("RAIZ QUADRADA - Deve obter o resultado da raiz quadrada utilizando o número 0") do
        first_number = 0
        expect(calculadora.raizQuadrada(first_number)).to eq 0
    end

    it("RAIZ QUADRADA  - O resultado da raiz quadrada do numero com casas decimais deve ser do tipo FLOAT") do 
        first_number = 70.6
        expect(calculadora.raizQuadrada(first_number)).to be_kind_of(Float)
    end

    it("RAIZ QUADRADA  - O resultado do resto da divisão dos numeros inteiros deve ser do tipo Numerico") do 
        first_number = 70
        expect(calculadora.raizQuadrada(first_number)).to be_kind_of(Numeric)
    end 


    "-------------ERRADOS-------------"

    it("RAIZ QUADRADA - A escolha de um dos números não deve ser nula.") do
            first_number = 
            expect(calculadora.raizQuadrada(first_number)).not_to be_nil
    end

    it("RAIZ QUADRADA - Não deve aceitar a raiz quadrada de um número negativo.") do
            first_number = -25
            expect(calculadora.raizQuadrada(first_number)).to be_falsey
    end

    it("RAIZ QUADRADA - O resultado da raiz quadrada de um número inteiro não deve ser do tipo String") do 
            first_number = "25"
            expect(calculadora.raizQuadrada(first_number)).to be_kind_of(Float)
    end

    it("RAIZ QUADRADA - O resultado da raiz quadrada com casas decimais não deve ser do tipo String") do 
            first_number = "50.5"
            expect(calculadora.raizQuadrada(first_number)).to be_kind_of(Float)
    end

    it("RAIZ QUADRADA - Não deve aceitar a raiz quadrada de números negativos com casas decimais.") do
         first_number = -1.69
         expect(calculadora.raizQuadrada(first_number)).to eq 1.3
    end

    it("RAIZ QUADRADA - Não deve haver caracteres especiais na escolha do número.") do 
            first_number = "$"
            expect(calculadora.raizQuadrada(first_number)).to be_kind_of(Numeric)
    end
   

# TESTE DO PI

    "-------------CORRETOS-------------"

    it("PI - Deve obter o resultado do PI") do
        first_number = 25
        expect(calculadora.pi(first_number)).to eq 78.5
    end

    it("PI - Deve obter o resultado do PI utilizando o número 0") do
        first_number = 0
        expect(calculadora.pi(first_number)).to eq 0
    end

    it("PI - Deve obter o resultado de um PI negativo.") do
        first_number = -25
        expect(calculadora.pi(first_number)).to eq -78.5
    end

    it("PI - Deve obter o resultado de um PI com casas decimais.") do
        first_number = 3.14
        expect(calculadora.pi(first_number)).to eq 9.9
    end

    it("PI - Deve obter o resultado de um PI com casas decimais negativo") do
        first_number = -3.14
        expect(calculadora.pi(first_number)).to eq -9.9
    end

    it("PI  - O resultado do PI de um número com casas decimais deve ser do tipo FLOAT") do 
        first_number = 3.14
        expect(calculadora.pi(first_number)).to be_kind_of(Float)
    end

    it("PI  - O resultado do resto da divisão dos numeros inteiros deve ser do tipo Numerico") do 
        first_number = 25
        expect(calculadora.pi(first_number)).to be_kind_of(Numeric)
    end 

    "-------------ERRADOS-------------"

    it("PI - A escolha do número não deve ser nula.") do
           first_number = 
           expect(calculadora.pi(first_number)).not_to be_nil
    end

    it("PI - O resultado do PI não deve ser do tipo String") do 
            first_number = "25"
            expect(calculadora.pi(first_number)).to be_kind_of(Numeric)
    end

    it("PI - O resultado do PI com casas decimais não deve ser do tipo String") do 
            first_number = "50.5"
            expect(calculadora.pi(first_number)).to be_kind_of(Float)
    end

    it("PI - Não deve haver caracteres especiais na escolha do número.") do 
            first_number = "$"
            expect(calculadora.pi(first_number)).to be_kind_of(Numeric)
    end
    

    

end
