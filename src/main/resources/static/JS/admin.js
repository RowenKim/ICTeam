var table = $('#myTable').DataTable({
     
   "language": {
        "emptyTable": "데이터가 없어요.",
        "lengthMenu": "페이지당 _MENU_ 개씩 보기",
        "info": "현재 _START_ - _END_ / _TOTAL_건",
        "infoEmpty": "데이터 없음",
        "infoFiltered": "( _MAX_건의 데이터에서 필터링됨 )",
        "search": "검색: ",
        "zeroRecords": "일치하는 데이터가 없어요.",
        "loadingRecords": "로딩중...",
        "processing":     "잠시만 기다려 주세요...",
        "paginate": {
            "next": "다음",
            "previous": "이전"
        }
    },

   
	
});

 $(function() {
        $('.actions').on('shown.bs.dropdown', function(e) {
            let menu = $(this).find('.dropdown-menu');
            let parent = $(this).parents('td').position().top;
            let top = $(this).position().top;
            let height = $(this).height();
            
            top = (top + parent);

            $("head").append('<style type="text/css" id="new-style"></style>');

            var newStyleElement = $("head").children('#new-style');
            newStyleElement.html('.dropdown-menu[x-placement^="left"],' +
                '.dropdown-menu[x-placement ^= "right"],' +
                '.dropdown-menu[x-placement ^= "top"] {' +
                'top:' + (top + height) + 'px !important;' +
                '}'
            );

            $('.actions').on('hide.bs.dropdown', function() {
                $("head").children('#new-style').remove();
            });
        })
    });

