/**
 * 
 */
// 고객 리스트 제목 클릭시 내용 보이게 하기
$(document).ready(function() {
	//	alert("JS 연결 성공")


	
	$("input[name='agree']").on('click', function() {
		//alert($(this).is(":checked") );

		var valueCheck = $("input[name='agree']:checked").val();
		
		//alert(valueCheck);
			
		
			$(".p_way").val(valueCheck);


	});





});
