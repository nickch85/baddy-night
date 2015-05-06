var ready = function () {
  $('.datepicker').datepicker({
    orientation: 'bottom',
    format: 'dd/mm/yyyy',
    todayBtn: true
  });

  $('.colourpicker').minicolors({theme: 'bootstrap'});
}
$(document).ready(ready)
$(document).on('page:load', ready)
  var datepicker = $.fn.datepicker.noConflict(); // return $.fn.datepicker to previously assigned value
  $.fn.bootstrapDP = datepicker;                 // give $().bootstrapDP the bootstrap-datepicker functionality