class IMC
    def imcPositivo(peso, altura)      
        imc_calculado = peso / (altura * altura)
        imc_calculado.round(2) 
    end
    def imcNull(peso, altura)
        if altura == null or peso == null
            return "Erro de entrada inválida (Altura e/ou peso não podem ser nulos)"
        end     
    end

    def imcValorZero(peso, altura)
        if altura == 0 or peso == 0
            return "Não é possível calcular o IMC com valor peso ou altura zerado!"
        end       
    end  
    def imcValorVirgula(peso, altura)
        if altura != 92.3 or peso != 1.75
            return "Erro de entrada inválida (Altura e/ou peso não pode ser separado por vírgulas e sim por ponto!)"
        end       
    end        
    def imcValorGrande(peso, altura) 
        if altura > 2.00 or peso > 150
            return "Erro de entrada inválida (Altura e/ou peso muito grande)"
        end       
    end
    def imcValorPequeno(peso, altura)
        if altura < 0.50 or peso < 10
            return "Erro de entrada inválida (Altura e/ou peso muito pequeno)"
        end        
    end              
end