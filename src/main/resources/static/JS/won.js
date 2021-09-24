/**
 * 
 */
// 고객 리스트 제목 클릭시 내용 보이게 하기
$(document).ready(function() {
	//alert("JS 연결 성공")
	
		$("#sub").click(function(){
			//alert("열람완료");
			if($("#reviewContent").css("display") == "none"){ 
				$("#reviewContent").show();
			} else {
				$("#reviewContent").hide();
			}
		})
		
		$("#ques-sub").click(function(){
			//alert("열람완료");
			if($("#questionContent").css("display") == "none"){ 
				$("#questionContent").show();
			} else {
				$("#questionContent").hide();
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
		
		$(window).scroll(function() {
		    if ($(window).scrollTop() > 905 && $(window).width() >950 )
		     {
		       $('#info-nav').css({
                position: 'fixed',
				top:81
            });
			}  else {
		      $('#info-nav').css({
                position: 'relative',
				top:0
            });
	     }

 		});
		
		$("#info-explain").click(function(){
			//alert("클릭 성공")
			 var offset = $("#proInfoImg").offset();
		        $('html, body').animate({scrollTop : offset.top}, 500);
		})
		
		
		$("#review-product").click(function(){
			//alert("클릭 성공")
			 var offset = $(".review").offset();
		        $('html, body').animate({scrollTop : offset.top}, 500);
		})
		
		$("#question-product").click(function(){
			//alert("클릭 성공")
			 var offset = $("#question").offset();
		        $('html, body').animate({scrollTop : offset.top}, 500);
		})
		

		$('input[type="checkBox"][class="basketChk"]').on('click', function(){
			//alert("버튼체크 활성화1")
		  var chkValue = $('input[type="checkbox"][class="basketChk"]:checked').val();
			//alert("버튼체크 활성화2" + chkValue)
		  if(chkValue){
			//alert("버튼체크 활성화3")
		             $('#orderBtn1').css('display','none');
		             $('#orderBtn2').css('display','block');

		  }else{
			//alert("버튼체크 활성화4")
		             $('#orderBtn1').css('display','block');
		             $('#orderBtn2').css('display','none');
		  }
		 
		});
		
		$('input[type="checkBox"][id="agree_all"]').on('click', function(){
			//alert("버튼체크 활성화1-1")
		  var chkValue2 = $('input[type="checkbox"][id="agree_all"]:checked').val();

			//alert("버튼체크 활성화2-2" + chkValue2)
		  if(chkValue2){
			//alert("버튼체크 활성화3-3")
		             $('#orderBtn1').css('display','none');
		             $('#orderBtn2').css('display','block');
		  }else{
			//alert("버튼체크 활성화4-4")
		             $('#orderBtn1').css('display','block');
		             $('#orderBtn2').css('display','none');
		  }
		 
		});
		
		

});
