$(function() {
	var summer_note;
	summer_note = $('#articles_post_psttext');
	summer_note.summernote({
		height: 800,
		toolbar: [
			// [groupName, [list of button]]
			['style', ['bold', 'italic', 'underline', 'clear']],
			['font', ['strikethrough', 'superscript', 'subscript']],
			['fontsize', ['fontsize']],
			['color', ['color']],
			['para', ['ul', 'ol', 'paragraph']],
			['height', ['height']],
			['view', ['fullscreen', 'codeview']],
		],
		codemirror: {
			lineNumbers: true,
			tabSize: 2,
			theme: "solarized light"
		}
	});
	summer_note.code(summer_note.val());
	return summer_note.closest('form').submit(function() {
		summer_note.val(summer_note.code());
		return true;
	});
});
