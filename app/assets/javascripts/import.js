var ready = function(){
  $(document).on('change', '#test_set_id', function(){
    $.ajax(
      {
        url: '/update_regressions.js',
        type: 'GET',
        dataType: 'script',
        data: {
          test_set_id: $("#test_set_id option:selected").val()
        },
        success: function(data, textStatus, jqXHR){
          console.log("Dynamic country select OK!")
        }
      }
    );
  });
}

$(document).ready(ready);
$(document).on('page:load', ready);
