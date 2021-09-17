/**
 * 
 */
// 고객 리스트 제목 클릭시 내용 보이게 하기
$(document).ready(function() {
		$("#sub").click(function(){
			if($("#reviewContent").css("display") == "none"){ 
				$("#reviewContent").show();
			} else {
				$("#reviewContent").hide();
			}
		})
});
