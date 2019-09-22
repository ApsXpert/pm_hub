$(function() {

	$(".wyswyg").each(function() {

		var $editor = $(this).find(".editor");
		var $toolbar = $(this).find(".toolbar");

		var editor = new Quill($editor.get(0), {
			theme : 'snow',
			modules : {
				toolbar : $toolbar.get(0)
			}
		});
	});

});

$('#myDatepicker').datetimepicker({
	format : 'DD.MM.YYYY'
});