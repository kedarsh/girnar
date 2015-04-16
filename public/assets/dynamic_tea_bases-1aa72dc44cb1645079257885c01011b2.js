(function() {
  jQuery(function() {
    var states;
    $('#person_state_id').parent().hide();
    states = $('#person_state_id').html();
    return $('#person_country_id').change(function() {
      var country, escaped_country, options;
      country = $('#person_country_id :selected').text();
      escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
      options = $(states).filter("optgroup[label='" + escaped_country + "']").html();
      if (options) {
        $('#person_state_id').html(options);
        return $('#person_state_id').parent().show();
      } else {
        $('#person_state_id').empty();
        return $('#person_state_id').parent().hide();
      }
    });
  });

}).call(this);
