$(document).ready(function() {

	
	
	//����ȭ�� �Ʒ��� ����
	var $bannerWidth = $("#point-ranking-container div").width() - 2250;
	var marquee = function() {
		$("#point-ranking-container div").animate({
			"left" : -$bannerWidth
		}, 30000, function() {
			$("#point-ranking-container div").animate({
				"left" : 0
			}, 30000, function() {
				marquee();
			});
		});
	};
	$("#point-ranking-container div").hover(function() {
		$("#point-ranking-container div").stop();
	}, function() {
		marquee();
	});
});