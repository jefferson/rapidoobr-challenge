const simularOperacao = function(){
    
    const form = $("form#new_simulacao");
    const plan = $("#plans");
    
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
        form.fadeOut(function(){
            plan.removeClass("hide").fadeIn();
        });
        
        
    })
    
}

document.addEventListener("turbolinks:load", function() {
  
  $("#enviar").click(function(){
        
        simularOperacao();
        
  });
  
})