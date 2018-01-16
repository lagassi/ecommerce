function pegarAulas(obj) {
	var item = obj.value;

	$.ajax({
		url:BASE_URL+"pegar",
		type:'POST',
		data:{modulo:item},
		dataType:'json',
		success:function(json) {
			var html = '';

			for(var i in json) {
				html += '<option value="'+json[i].id+'">'+json[i].titulo+'</option>';
			}

			$("#aulas").html(html);
		}
	});
}