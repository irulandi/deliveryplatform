<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<footer class="px-footer px-footer-bottom p-t-0">
	<hr class="page-wide-block">
    <span class="text-muted">Copyright © 2017 Hard n Soft Technologies Pvt Ltd. All rights reserved.</span>
</footer>
    <%String contextPath = request.getContextPath(); %>
<script src="<%=contextPath%>/assets/js/jquery.min.js"></script>
<script src="<%=contextPath%>/assets/js/bootstrap.min.js"></script>
<script src="<%=contextPath%>/assets/js/pixeladmin.min.js"></script>
<script src="<%=contextPath%>/assets/js/datatables.min.js"></script>
	
<script type="text/javascript">
	$(function(){
		var file=String(document.location).split('/').pop();
		file = file.replace(/(\.html).*/i, '$1');
		if (!/.html$/i.test(file)) {
        	file = 'index.html';
		}
            
        $('body > .px-nav')
        	.find('.px-nav-item > a[href="' + file + '"]')
        	.parent()
        	.addClass('active');

        $('body > .px-nav').pxNav();
        $('body > .px-footer').pxFooter();

        $('#navbar-notifications').perfectScrollbar();
        $('#navbar-messages').perfectScrollbar();
	});
	
	var isDataTable = document.getElementById('dataTable1');// $('#dataTable1');
	if (isDataTable != null){
		$(document).ready(function(){
	        $('#dataTable1').dataTable();
	        $('#datatables_wrapper .dataTables_filter input').attr('placeholder', 'Search...');
	    });	
	}
	
</script>
</body>
</html>