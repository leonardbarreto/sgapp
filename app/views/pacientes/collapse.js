//collapsible menu
 $('#accordion').click(function(e) {
        e.preventDefault();
        $(this).tab('show');
    })

    $('.expandcollapse').click(function() {

        var newstate = $(this).attr('state') ^ 1,
            icon = newstate ? "minus" : "plus",
            text = newstate ? "Collapse" : "Expand";
    
        // if state=0, show all the accordion divs within the same block (in this case, within the same section)
        if ( $(this).attr('state')==="0" ) {
            console.log('1');
            $(this).siblings('div').find('div.accordion-body:not(.in)').collapse('show');
        }
        // otherwise, collapse all the divs
        else {
            console.log('2');
            $(this).siblings('div').find('div.accordion-body.in').collapse('hide');
        }

        $(this).html("<i class=\"icon-white icon-" + icon + "-sign\"></i> " + text +" All");

        $(this).attr('state',newstate)

    });

    $('a[data-toggle="tab"]').on('shown', function (e) {

        var myState = $(this).attr('state'),
            state = $('.expandcollapse').attr('state');

        if(myState != state) {
          toggleTab($(this).prop('hash'));
          $(this).attr('state',state);
        }

    })

    function toggleTab(id){

        $(id).find('.collapse').each(function() {
            $(this).collapse('toggle');
          });

    }