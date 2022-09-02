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

# it("Deve calcular a raiz quadrada do número") do 
#     expect(calculadora.raizQuadrada(25)).to eq 5
# end