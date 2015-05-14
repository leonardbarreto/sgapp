// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('#lnkPacientesAusente').click(function(){
	$('#pacientes').show();
});
$('#btnAusentes').click(function(){
	$('#pacientes').show();

});

//:javascript
//  $(document).ready(function(){
// Pega dinamicamente valor de um text_box para passar como
// parametro para o link_to
    $("#my_input").change(function() {
       $("#search_link").attr("href","paciente_reports/ausentes?periodo=" + encodeURIComponent( $(this).val() ) );
    });
//  });