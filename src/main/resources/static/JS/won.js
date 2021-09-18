/**
 * 
 */
// 고객 리스트 제목 클릭시 내용 보이게 하기
$(document).ready(function() {
	//alert("JS 연결 성공")
		$("#sub").click(function(){
			
			if($("#reviewContent").css("display") == "none"){ 
				$("#reviewContent").show();
			} else {
				$("#reviewContent").hide();
			}
		})
		
		$("#increasQuantity").click(function(){
			
			var num = jQuery("#productStock").val();

			num++;
			
			
			jQuery("#productStock").val(num);
			
		})
		
		$("#decreaseQuantity").click(function(){
			
			var num = jQuery("#productStock").val();

			num--;
			
			if(num <= 0){
				alert("더 이상 줄일수 없습니다.");
				num = 1;
			}
			
			jQuery("#productStock").val(num);
			
		})
});
