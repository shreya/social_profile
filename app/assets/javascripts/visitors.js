$( document ).ready(function() {
	$('#social_form').validate({
		rules: {
			"username": {required: true}
		}
	});

	$("#twitter").click(function() {
		$('#type').val('twitter');
	});
	$("#github").click(function() {
		$('#type').val('github');
	});
	$("#rubygems").click(function() {
		$('#type').val('rubygems');
	});


	$("#social_form")
	.bind("ajax:beforeSend", function(){
        $("#spinner").show();
    })
    .bind("ajax:complete", function(){
        $("#spinner").hide();
    })


});