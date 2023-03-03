require 'rspec'
require_relative '../src/imc'

describe('Calculo do IMC') do
    imc = IMC.new
      
    it('Validar valores válidos') do
        peso = 70
        altura = 1.70
        expect(imc.imcPositivo(peso, altura)).to eq 24.22        
    end  

    it('Validar valor inválido da altura') do
        peso = 70
        altura = 0
        expect(imc.imcValorZero(peso, altura)).to include "Não é possível calcular o IMC com valor peso ou altura zerado!"        
    end

    it('Validar valor inválido do peso') do
        peso = 0
        altura = 1.70
        expect(imc.imcValorZero(peso, altura)).to include "Não é possível calcular o IMC com valor peso ou altura zerado!"       
    end

    it('Validar valores de altura e peso muito grandes') do
        peso = 180
        altura = 2.10
        expect(imc.imcValorGrande(peso, altura)).to include "Erro de entrada inválida (Altura e/ou peso muito grande)"       
    end

    it('Validar valores de altura e peso muito pequenos') do
        peso = 9
        altura = 0.40
        expect(imc.imcValorPequeno(peso, altura)).to include "Erro de entrada inválida (Altura e/ou peso muito pequeno)"       
    end

    it('Validar valor da altura com vírgula em vez de ponto') do
        peso = 1.75
        altura = 92,3
        expect(imc.imcValorVirgula(peso, altura)).to include "Erro de entrada inválida (Altura e/ou peso não pode ser separado por vírgulas e sim por ponto!"       
    end
    it('Validar valor do peso com vírgula em vez de ponto') do
        peso = 1,75
        altura = 92.3
        expect(imc.imcValorVirgula(peso, altura)).to include "Erro de entrada inválida (Altura e/ou peso não pode ser separado por vírgulas e sim por ponto!"       
    end

    # it('Validar valor em moedas diferentes') do
    #     peso = 1,75
    #     altura = 93
    #     expect(imc.imcValorVirgula(peso, altura)).to include "Erro de entrada inválida (Altura e/ou peso não pode ser separado por vírgulas e sim por ponto!"       
    # end

    # it('Validar valor do peso null') do
    #     # peso = 
    #     altura = 93
    #     expect(imc.imcNull(peso, altura)).to include "Erro de entrada inválida (Altura e/ou peso não podem ser nulos"       
    # end
end