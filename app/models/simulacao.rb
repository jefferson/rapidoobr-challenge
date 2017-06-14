class Simulacao < ApplicationRecord
    
    TAXA_DIARIA = 0.00165
    
    def calculo_do_desconto_simples
        
        taxa = (TAXA_DIARIA * prazo_ate_atendimento.to_f)
        
        valor_a_receber = valor_do_titulo.to_f - (valor_do_titulo.to_f * taxa )
        
        {taxa: taxa, valor_a_receber: valor_a_receber}
        
    end
    
end
