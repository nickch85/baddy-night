

$(document).ready(function(){
  $('.datepicker').datepicker({
    orientation: 'bottom',
    format: 'dd/mm/yyyy',
    todayBtn: true
  });
  var datepicker = $.fn.datepicker.noConflict(); // return $.fn.datepicker to previously assigned value
  $.fn.bootstrapDP = datepicker;                 // give $().bootstrapDP the bootstrap-datepicker functionality
});
