
$(window).load(function() {
  $(".dropdown-menu li a").click(function(){
     $(this).parents('.dropdown-menu').siblings('.btn').text($(this).text());
     $(this).parents('.dropdown-menu').siblings('.btn').val($(this).text());
  /*$('.dropdown-menu a').on('click', function(){ 
  $('.dropdown-toggle').html($(this).html()); */ 
  });  
});

function dynamic_event(tea_id,textvalue,buttonid){
      $("#"+buttonid).text(textvalue);
     //$(this).parents('.dropdown-menu').siblings('.btn').text(55);
    
      $.ajax({
        url: "/pages/update_tea_base_types",
        data: {
          tea_base_id : tea_id
        },
        dataType: "script"
      });
}




$("#sss").change(function() { 
if($(this).data('options') == undefined){
    /*Taking an array of all options-2 and kind of embedding it on the select1*/
    $(this).data('options',$('#sb option').clone());
    } 
var id = $(this).val();
var options = $(this).data('options').filter('[value=' + id + ']');
$('#sb').html(options);
});



$(window).load(function() {
    //alert("Inside js first line!");
    $('select[data-option-dependent=true]').each(function (i) {
        //alert("Inside js 2nd line!");
            var observer_dom_id = $(this).attr('id');
            //alert(observer_dom_id);
            var observed_dom_id = $(this).data('option-observed');
            //alert(observed_dom_id);
            var url_mask = $(this).data('option-url');
            var key_method = $(this).data('option-key-method');
            var value_method = $(this).data('option-value-method');
            alert(url_mask + "," + key_method + "," + value_method);
            alert("yo");
            alert("yo" + $(this)('option[value=]'));
            //var prompt = $(this).has('option[value=]').size() ? $(this).find('option[value=]') : $('<option value=\"\">').text('SELECT BASE *');
            var prompt = $("<option value=\"\">").text("Select a value");
            var regexp = /:[0-9a-zA-Z_]+:/g;
            var observer = $('select#' + observer_dom_id);
            var observed = $('#' + observed_dom_id);
            //alert(prompt + "," + observer + "," + observed)
            alert(observer);
            alert("Observed" + observed);

            if (!observer.val() && observed.size() > 1) {
                observer.attr('disabled', true);
            }
            observed.on('change', function () {
                observer.empty().append(prompt);
                if (observed.val()) {
                    var url = url_mask.replace(regexp, observed.val());
                    $.getJSON(url, function (data) {
                        $.each(data, function (i, object) {
                            observer.append($('<option>').attr('value', object[key_method]).text(object[value_method]));
                            observer.attr('disabled', false);
                        });
                    });
                }
            });
        });
    });
    
    
    

jQuery(function() {
  var states;
  $('#user_state_id').parent().hide();
  states = $('#user_state_id').html();
  return $('#user_country_id').change(function() {
    var country, escaped_country, options;
    country = $('#user_country_id :selected').text();
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(states).filter("optgroup[label='" + escaped_country + "']").html();
    if (options) {
      $('#user_state_id').html(options);
      return $('#user_state_id').parent().show();
    } else {
      $('#user_state_id').empty();
      return $('#user_state_id').parent().hide();
    }
  });
});    

