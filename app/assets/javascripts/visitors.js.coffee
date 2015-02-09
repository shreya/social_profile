$ ->
  $('#twitter').click -> 
    $('#type').val('twitter')
  $('#github').click -> 
    $('#type').val('github')
  $('#rubygems').click -> 
    $('#type').val('rubygems')
  $('#elm_id').validate ->
  	rules: 
  	  'username': {required: true}    