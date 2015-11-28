$(function() {
	var serif = $('.input-serif');

	ISearch.setup(serif, function(elem, input) {
		elem = elem.parent().parent().parent().find(".serif");
		elem.html(input);
	});

	var character = $('.input-character');

	ISearch.setup(character, function(elem, input) {
		elem = elem.parent().parent().parent().find(".img-yonkoma");
		$.get("search_image", { q: input }
			 ).done(function(urls) {
			if (urls.length > 0) {
				elem.attr('src', urls[0].image_url);
			}
			else {
				elem.attr('src', "");
			}
		});
	});

	$('#submit').submit(function(){
		//バリデーションチェックの結果submitしない場合、return falseすることでsubmitを中止することができる。

		var results = [];

		$(".yonkoma-box").each(function(i) {
			var image = $($($(this).find(".img-yonkoma")[0])[0]);
			var image_x = image.position().left; // -15
			var image_y = image.position().top;
			console.log(image_x);
			var serif = $($(this).find(".serif")[0]).text();
			// results.push({ image_url: image_url, serif: serif});
			result = {};
			no = i + 1;
			result["i_url"+no] = image.attr('src');
			result["p_url"+no] = image.attr('src'); // 
			result["i_x"+no] = image_x;
			result["i_y"+no] = image_y;
			result["i_w"+no] = image.width();
			result["i_h"+no] = image.height();
			result["serif"+no] = serif;
			result["s_x"+no] = 0;
			result["s_y"+no] = 0;
			result["s_w"+no] = 0;
			result["s_h"+no] = 0;
			console.log(result);
			results.push(result);
		});

		$.ajax({
			url: "/yonkomas",
			type: 'POST',
			dataType: 'json',
			data : { yonkoma: results },
			timeout:10000,
			success: function(data) {
				alert("ok");
			},
			error: function(XMLHttpRequest, textStatus, errorThrown) {
				alert("error");
			}
		});

		var title = $("#input-title").val();

		return false;
	});

	$('.img-yonkoma').draggable();
});

