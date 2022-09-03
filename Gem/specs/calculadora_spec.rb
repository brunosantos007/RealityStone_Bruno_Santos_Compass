require "rspec"
require "pry"
require_relative "../src/calculadora.rb"


describe("Calculadora :") do
    calculadora = Calculadora.new

# TESTE SOMA:

    "-------------CORRETOS-------------"

    it("SOMA - Um dos números não deve ser nulo.") do 
        first_number = 5
        second_number = 5
        expect(calculadora.sum(first_number,second_number)).not_to be_nil
    end

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

    # it("SOMA - A resposta da soma de dois números inteiros negativos deve ser negativa.") do 
    #     first_number = -5
    #     second_number = -5
    #     expect(calculadora.sum(first_number,second_number)).to output(/-10/)
    # end

    it("SOMA - Deve somar dois números inteiros positivos com casas decimais.") do 
        first_number = 50.5
        second_number = 70.6
        expect(calculadora.sum(first_number,second_number)).to eq 121.1
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

    #  it("SOMA - Um dos números não deve ser nulo") do 
    #     first_number = 5
    #     second_number = 
    #     expect(calculadora.sum(first_number,second_number)).not_to be_nil
    #  end

    # it("SOMA - O resultado da soma deve ser do tipo Númerico") do 
    #     first_number = 5
    #     second_number = "5"
    #     expect(calculadora.sum(first_number,second_number)).to be_kind_of(Numeric)
    # end

    #  it("SOMA - O resultado da soma deve ser do tipo Float.") do 
    #      first_number = 50.0
    #      second_number = "70.0"
    #      # Resposta = 121.1
    #      expect(calculadora.sum(first_number,second_number)).to be_kind_of(Float)
    #  end

# TESTE SUBTRAÇÃO

    "-------------CORRETOS-------------"

    it("SUBTRAÇÃO - Um dos números não deve ser nulo.") do 
        first_number = 5
        second_number = 5
        expect(calculadora.subtraction(first_number,second_number)).not_to be_nil
    end

    it("SUBTRAÇÃO - Deve subtrair dois números inteiros.") do 
        first_number = 10
        second_number = 5
        expect(calculadora.subtraction(first_number,second_number)).to eq 5
    end

    it("SUBTRAÇÃO - Deve subtrair dois números inteiros com casas decimais.") do 
         first_number = 50.5
         second_number = 70.6
         expect(calculadora.subtraction(first_number,second_number)).to eq -20.1
    end

    it("SUBTRAÇÃO - O resultado da subtração com casas decimais deve ser do tipo Float") do 
        first_number = 50.5
        second_number = 70.6
        expect(calculadora.subtraction(first_number,second_number)).to be_kind_of(Float)
   end

    it("SUBTRAÇÃO - Subtrair dois número sendo o primeiro menor que o segundo.") do 
        first_number = 20
        second_number = 50
        expect(calculadora.subtraction(first_number,second_number)).to eq -30
    end

    "-------------ERRADOS-------------"

    # it("SUBTRAÇÃO - Um dos números não deve ser nulo.") do 
    #     first_number = 5
    #     second_number = 
    #     expect(calculadora.subtraction(first_number,second_number)).not_to be_nil
    # end
    

# TESTE DIVISÃO

    "-------------CORRETOS-------------"

    it("DIVISÃO - Um dos números não deve ser nulo.") do 
        first_number = 5
        second_number = 5
        expect(calculadora.division(first_number,second_number)).not_to be_nil
    end

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

   it("DIVISÃO - O resultado da divisão dos numeros com casas decimais deve ser do tipo FLOAT") do 
        first_number = 70.6
        second_number = 50.5
        expect(calculadora.division(first_number,second_number)).to be_kind_of(Float)
    end

    it("DIVISÃO - O resultado da divisão dos numeros inteiros deve ser do tipo Numerico") do 
        first_number = 70.6
        second_number = 50.5
        expect(calculadora.division(first_number,second_number)).to be_kind_of(Numeric)
    end

# TESTE MULTIPLICAÇÃO

    "-------------CORRETOS-------------"

    it("MULTIPLICAÇÃO - Um dos números não deve ser nulo.") do 
        first_number = 5
        second_number = 5
        expect(calculadora.multiplication(first_number,second_number)).not_to be_nil
    end

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

# TESTE RESTO DA DIVISÃO

    "-------------CORRETOS-------------"

    it("RESTO - A escolha de um dos números não deve ser nula.") do
        first_number = 10
        second_number = 5
        expect(calculadora.restoDivisao(first_number,second_number)).not_to be_nil
    end

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

# TESTE RAIZ QUADRADA

    "-------------CORRETOS-------------"

   

end




# it("O resultado da soma deve ser do tipo Númerico") do 
#     expect(calculadora.sum(5,4)).to be_kind_of(Numeric)
# end

# # TESTE SUBTRAÇÃO

# # TESTE DIVISÃO

# it("O resultado da divisão deve ter casas decimais") do 
#     expect(calculadora.division(100,6)).to eq 16
# end

# # TESTE MULTIPLICAÇÃO

# # TESTE RESTO DA DIVISÃO

# # TESTE RAIZ QUADRADA

# TESTE DO PI

# it("Deve calcular a raiz quadrada do número") do 
#     expect(calculadora.raizQuadrada(25)).to eq 5
# end