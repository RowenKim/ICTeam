/**
 * 
 */
// 고객 리스트 제목 클릭시 내용 보이게 하기
$(document).ready(function() {
	//	alert("JS 연결 성공")


	$(".change1").click(function() {

		//alert("열람완료");
		if ($(this).children(".reviewContent").css("display") == "none") {
			// alert("들어옴1")
			$(this).children(".reviewContent").show();
		} else {
			// alert("들어옴")
			$(this).children(".reviewContent").hide();
		}
	})





	$(".increasQuantity").click(function() {

		var num = $(this).parent().children(".qty").val();
		//alert(num)

		//var num = jQuery(".productStock").val();

		num++;

		$(this).parent().children(".productStock").val(num);
		//	jQuery(".productStock").val(num);

	})


	$(".decreaseQuantity").click(function() {

		var num = $(this).parent().children(".qty").val();

		//var num = jQuery(".productStock").val();

		num--;

		if (num <= 0) {
			alert("더 이상 줄일수 없습니다.");
			num = 1;
		}
		$(this).parent().children(".productStock").val(num);
		//jQuery(".productStock").val(num);

	})

	$(window).scroll(function() {
		if ($(window).scrollTop() > 905 && $(window).width() > 950) {
			$('#info-nav').css({
				position: 'fixed',
				top: 80
			});
		} else {
			$('#info-nav').css({
				position: 'relative',
				top: 0
			});
			
		}

	});
	

	$("#info-explain").click(function() {
		//alert("클릭 성공")
		var offset = $("#proInfoImg").offset();
		$('html, body').animate({ scrollTop: offset.top }, 500);
	})


	$("#review-product").click(function() {
		//alert("클릭 성공")
		var offset = $(".review").offset();
		$('html, body').animate({ scrollTop: offset.top }, 500);
	})

	$("#question-product").click(function() {
		//alert("클릭 성공")
		var offset = $("#question").offset();
		$('html, body').animate({ scrollTop: offset.top }, 500);
	})


	$('input[type="checkBox"][class="basketChk"]').on('click', function() {
		//alert("버튼체크 활성화1")
		var chkValue = $('input[type="checkbox"][class="basketChk"]:checked').val();
		//alert("버튼체크 활성화2" + chkValue)
		if (chkValue) {

			//alert("버튼체크 활성화3")
			$('#orderBtn1').css('display', 'none');
			$('#orderBtn2').css('display', 'block');

		} else {
			//alert("버튼체크 활성화4")
			$('#orderBtn1').css('display', 'block');
			$('#orderBtn2').css('display', 'none');
		}

	});

	$('input[type="checkBox"][id="agree_all"]').on('click', function() {
		//alert("버튼체크 활성화1-1")
		var chkValue2 = $('input[type="checkbox"][id="agree_all"]:checked').val();

		//alert("버튼체크 활성화2-2" + chkValue2)
		if (chkValue2) {
			//alert("버튼체크 활성화3-3")
			$('#orderBtn1').css('display', 'none');
			$('#orderBtn2').css('display', 'block');
		} else {
			//alert("버튼체크 활성화4-4")
			$('#orderBtn1').css('display', 'block');
			$('#orderBtn2').css('display', 'none');
		}

	});

	$("input[name='agree']").click(function() {
		//alert($(this).is(":checked") );

		total = 0;

		$("input[name='agree']:checked").each(function() {
			//var count = $(this).siblings().parent().parent().find("input[name='qty']").val();	
			let count = $(this).parent().parent().find("input[name='qty']").val();
			let price = $(this).parent().parent().find("input[name='price']").val();
			let sum = count * price;
			total += sum;
		});
		//alert(total)

		$("input[name='total']").val(total);

		let length = $("input[name='agree']").length;
		let checked = $("input[name='agree']:checked").length;

		if (length != checked) $("input[name='agree_all']").prop("checked", false);
		else $("input[name='agree_all']").prop("checked", true);

	});

	$('input[name="agree_all"]').click(function() {
		//alert($(this).is(":checked") );

		total = 0;
		if ($("input[name='agree_all']").prop("checked")) {
			$("input[name='agree']").prop("checked", true);

			$("input[name='agree']:checked").each(function() {

				//.prop("checked", false)
				let count = $(this).parent().parent().find("input[name='qty']").val();
				let price = $(this).parent().parent().find("input[name='price']").val();
				let sum = count * price;
				total += sum;
			});
		} else {
			$("input[name='agree']").prop("checked", false);
			total = 0;
		}
		$("input[name='total']").val(total);

	});

	$('#selectDelete').click(function() {
		let total = 0;

		$("input[name='agree']:checked").each(function() {
			let tr = $(this).parent().parent();

			tr.remove();
		});
		//alert(total)

		$("input[name='total']").val(total);



	});      







});
