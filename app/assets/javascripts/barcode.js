$(function() {
  // Barcode
  $('.barcode').each(function(){
      $(this).barcode($(this).attr('data-barcode'), $(this).attr('data-type-barcode'));
  });
});
 