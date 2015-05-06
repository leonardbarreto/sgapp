//:javascript

  jQuery(function($){
  //$(document).ready(function (){
    // evitar conflito de versões
    //var $j = jQuery.noConflict(); // não comentando as abas do bootstrap não funciona
  
  $('#txtData').datetimepicker({
  yearOffset:000,
  lang:'pt-BR',
  timepicker:false,
  format:'d/m/Y',
  formatDate:'d/m/Y',
  closeOnDateSelect: true,
  minDate:'-1970/01/02', // yesterday is minimum date
  //maxDate:'+1970/01/02' // and tommorow is maximum date calendar
});


    //Desabilita botão para carregar agenda caso não seja
    //informado o funcionario e a data
    if ($('#selectFuncionario,#txtData').val()===''){
      $('#btnCarregarAgenda').attr('disabled','disabled');
    }
    
    $('datepicker').datepicker({
      autoclose: true,
      format: 'dd/mm/yyyy',
      language: 'pt-BR',
      startDate: new Date()
    });

    
    
    $('#txtData').popover({
      //title: 'A title!',
      //trigger: 'hover',
      html : true,
      trigger: 'manual',
      delay: { 
       show: "500", 
       hide: "100"
      },
      content: 'Clique para escolher uma data!' 
    }); 

    $('#selectFuncionario').popover({
    //  title: 'A title!',
      trigger: 'manual',
      placement: 'right',
      content: 'Clique para escolher um funcionário!' 
    });
    
    //Recebe foco ao carregar a página e verifica se o valor é nulo.  
    //Caso sim, emite uma mensagem com o popover
    $('#selectFuncionario').focus(function(){
      if ($('#selectFuncionario').val()===''){
        $('#selectFuncionario').popover('show');
      }
    }).focus();
    
    // Verifica escolha do valor, se nulo desabilita botões e mantém o foco
    $('#selectFuncionario').change(function(){
      //Verificando se valor é nulo
      if ($('#selectFuncionario').val()===''){
        $('#selectFuncionario').popover('show');
        //Desabilita o botão para carregar a agenda
        $('#btnCarregarAgenda').attr('disabled','disabled');
        $('#selectFuncionario').focus();
      }
      else{
        $('#btnCarregarAgenda').removeAttr('disabled');
        $('#selectFuncionario').popover('hide');
        }
    });
    
    //Exibir somente agendados
    $('#checkAtendido').change(function(){
      if (this.checked){
        $('tr.Atendido,tr.Cancelado,tr.Remarcado').hide();
      }
      else{
        $('tr.Atendido,tr.Cancelado,tr.Remarcado').show();
      }
    });  
    
  });
