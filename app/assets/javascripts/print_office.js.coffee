if gon.order_id
  jQuery.ajax(url: "/orders/" + gon.order_id + "/button_list.html").done (html) ->
    $(".order_show_back").append html

if gon.product_id
  jQuery.ajax(url: "/products/" + gon.product_id + "/barcode_button.html").done (html) ->
    $(".product_show_row_end").append html