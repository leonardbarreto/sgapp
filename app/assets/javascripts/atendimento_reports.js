// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
  jQuery(function($){
  //$(document).ready(function (){
    // evitar conflito de versões
    //var $j = jQuery.noConflict(); // não comentando as abas do bootstrap não funciona
  
  $('.datepicker, #dataini, #datafim').datetimepicker({
    yearOffset:000,
    lang:'pt-BR',
    timepicker:false,
    format:'d/m/Y',
    formatDate:'d/m/Y',
    closeOnDateSelect: true,
    //minDate:'-1970/01/02', // yesterday is minimum date
    //maxDate:'+1970/01/02' // and tommorow is maximum date calendar
  });
  
  $("#dataini, #datafim").change(function(){
      $("#search_link").attr("href","atendimento_reports/periodo?inicio=" + $("#dataini").val()+"&fim="+ $("#datafim").val()+";");
  });

  $('#btnListar').attr('disabled','disabled');

  if ($('#inputDataIni, #inputDataFim').val()===''){
      $('#btnListar').attr('disabled','disabled');
    }
  
  $('#inputDataIni, #inputDataFim').change(function(){
    if ($('#inputDataIni').val()!='' && $('#inputDataFim').val()!=''){
    $('#btnListar').removeAttr('disabled');
    }
  });
  


  
});
