<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="./../_header.jsp"></jsp:include>
<div class="px-content">
	<div class="row">
    	<div class="page-header">
        	<div class="row">
            	<div class="col-md-4 text-xs-center text-md-left text-nowrap">
                	<h1><i class="page-header-icon ion-ios-analytics"></i>Projects</h1>
            	</div>
            	<hr class="page-wide-block visible-xs visible-sm">
            	<div class="col-xs-12 width-md-auto width-lg-auto width-xl-auto pull-md-right">
                	<a class="btn btn-primary btn-block"><span class="btn-label-icon left ion-plus-round"></span> Create New Project</a>
            	</div>
        	</div>
    	</div>
	</div>
	<div class="panel">
    	<div class="panel-heading">
        	<div class="panel-title">Project List</div>
    	</div>
    	<div class="panel-body">
    		<div>
    			<table class="table" id="dataTable1">
    				
    			</table>
    		</div>
    	</div>	
	</div>
</div>

<jsp:include page="./../_footer.jsp"></jsp:include>