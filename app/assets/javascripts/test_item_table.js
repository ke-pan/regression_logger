var ready = function(){
  $('#test_item_table').dataTable({
    "processing": true,
    "serverSide": true,
    "pagingType": "full_numbers",
    "ajax": $('#test_item_table').data('source')
    // optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
  });
}
$(document).ready(ready);
$(document).on('page:load', ready);
