function showConfirm(content,yesClick){
	$("#confirmContent").text(content);
	$("#confirmBox").modal(true);
	
	let footer = '<button id="yesBtn" type="button" class="btn btn-danger" data-dismiss="modal">확 인</button>';
	footer += '<button type="button" class="btn btn-danger" data-dismiss="modal">취 소</button>';
	
	$("#confirmFooter").html(footer);
	$("#yesBtn").click(function(){
		yesClick();
	})
}
