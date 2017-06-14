const simularOperacao = function(btn){
    
    btn.html('<span class="glyphicon glyphicon glyphicon-dashboard"></span> Simulando...');
    
    const form = $("form#new_simulacao");
    const plan = $("#plans");
    const textTaxa = $("#taxa");
    const textValorAReceber = $("#valor-a-receber");
    
    if(!form[0].checkValidity())
    {
        form[0].reportValidity();
        return;
    }
    
    $.post({
        url: 'simulacoes.json',
        data: form.serialize()
    }).then(function(e){
        
        console.log(e);
        
        textTaxa.html(e.calculo_do_desconto_simples.taxa.toLocaleString("pt-BR", {style: "percent", minimumFractionDigits: 2}))
        textValorAReceber.html(e.calculo_do_desconto_simples.valor_a_receber.toLocaleString("pt-BR",  { style: 'currency', currency: 'BRL' }))
        
        form.fadeOut(function(){
            plan.removeClass("hide").fadeIn();
        });
        
        
    })
    
}

document.addEventListener("turbolinks:load", function() {
  
  $("#enviar").click(function(){
        
        simularOperacao($(this));
        
  });
  
})