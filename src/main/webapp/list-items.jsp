<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="top.jsp"%>

<body>

	<div id="wrapper">
		<%@ include file="horizontal-navigation.html"%>
 		<%@ include file="vertical-menu.jsp"%> 

		<div id="page-wrapper">
			<div class='row'>

				<div class='col-lg-12 '>
					<div class='panel panel-default margin-top-10 border-radius-0'>

						<div class='panel-heading'>${title}</div>

						<div class='panel-body'>
							<div class='row spacer-bottom'>
								<div class='col-lg-12'>
									<a href="${new_articles_types}">
										<button
											class='btn btn-lg btn-success button-novi border-radius-0'>
											<span class='glyphicon glyphicon-file'></span> Novi
										</button>
									</a> <a href="${print_articles_types}">
										<button
											class='btn btn-lg btn-success button-novi border-radius-0 margin-left-10'>
											<span class='fa fa-print'></span> Print
										</button>
									</a>
								</div>
							</div>
							<div class='row spacer-bottom border-bottom'></div>
							<table id="itemsTable"
								class="display table table-striped table-bordered table-hover border-radius-0">
								<!-- Header Table -->
								<thead>
									<tr>
										<th style="width: 5%;">Id</th>
										<th style="width: 7%;">Šifra</th>
										<th style="width: 30%;">Naziv</th>
										<th style="width: 27%;">Napomena</th>
										<th style="width: 10%;">Vreme</th>
										<th style="width: 6%;">Act</th>
										<th style="width: 15%;">Akcija</th>
									</tr>
								</thead>
							</table>


						</div>
					</div>
					<!-- end of panel -->
				</div>
			</div>


		</div>

	</div>

	<%@ include file="scripts.jsp"%>
	<c:choose>
		<c:when test="${title == 'Vrste artikala'}">
			<script src="static/js/datatable-vrsteartikala.js"></script>
		</c:when>
		<c:when test="${title == 'Jedinice mere'}">
			<script src="static/js/datatable-jedinicemera.js"></script>
		</c:when>
		<c:when test="${title == 'Klasifikacije'}">
			<script src="static/js/datatable-klasifikacije.js"></script>
		</c:when>
		<c:when test="${title == 'Poreske grupe'}">
			<script src="static/js/datatable-poreskegrupe.js"></script>
		</c:when>
	</c:choose>

	<!-- 		<script src="static/js/datatable-klasifikacije.js"></script> -->
	>
	<!-- 				<script src="static/js/datatable-poreskegrupe.js"></script> -->
	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
	
		function ConfirmDelete() {
			var x = confirm("Are you sure you want to delete?");
			if (x)
				return true;
			else
				return false;
		}
	</script>

</body>
</html>