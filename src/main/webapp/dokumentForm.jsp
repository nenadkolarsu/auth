<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="top.jsp"%>

<body>

	<div id="wrapper">
		<%@ include file="horizontal-navigation.html"%>
		<%@ include file="vertical-menu.jsp"%>

		<div id="page-wrapper">

			<div class="row">
				<div class="col-lg-12">
					<h6 class="page-header"></h6> 
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class='panel panel-default'>
						<div class='panel-heading'>${title}</div>
						<div class='panel-body'>
							<div class='row'>
								<div class='col-lg-6'>

									<form:form method="POST" action="save_dokument.html"
										modelAttribute="dokument">

										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" />

										<form:input type="hidden" name="id" path="id"
											value="${dokument.id}" />

<%-- 										<div class='form-group ${error != null ? 'has-error' : ''}'> --%>
<!-- 											<label class='font-oxygen'>Šifra dokumenta</label> -->

<%-- 											<form:input type="text" class="form-control " name="idVrstaDokumenta" --%>
<%-- 												path="idVrstaDokumenta" value="${dokument.idVrstaDokumenta}" autofocus="true" --%>
<%-- 												placeholder='Unesite šifru dokumenta' /> --%>

<!-- 											<p class="help-block"> -->
<%-- 												<form:errors path="idVrstaDokumenta" class="help-block text-danger" /> --%>
<!-- 											</p> -->
<!-- 										</div> -->

										<div class='form-group ${error != null ? 'has-error' : ''}'>
											<label class='font-awesome'>Broj dokumenta</label>
											<%-- 									<input class="form-control" name='name' path='name' placeholder='Unesite naziv' value="${task.name}"> --%>

											<form:input type="text" class="form-control" id="brojDokumenta"
												path="brojDokumenta" placeholder='brojDokumenta'
												value="${dokument.brojDokumenta}" />
											<p class="help-block">
												<form:errors path="brojDokumenta" class="help-block" />
											</p>
										</div>
										
<%-- 										<div class="form-group"${error != null ? 'has-error' : ''}'> --%>
<!-- 											<label class='font-awesome'>Vrsta dokumenta</label> -->

<%-- 											<form:select path="idVrstaDokumenta" class="form-control"> --%>
<%-- 												<form:options items="${eTypesOfDocuments}" /> --%>
<%-- 											</form:select> --%>

<!-- 											<p class="help-block"> -->
<%-- 												<form:errors path="idVrstaDokumenta" class="help-block" /> --%>
<!-- 											</p> -->
<!-- 										</div>											 -->

										<div class="form-group"${error != null ? 'has-error' : ''}'>
											<label class='font-awesome'>Vrsta dokumenta</label>

											<form:select path="TypesOfDocuments" class="form-control">
												<form:options items="${eTypesOfDocuments}" />
											</form:select>

											<p class="help-block">
												<form:errors path="TypesOfDocuments" class="help-block" />
											</p>
										</div>		
										
										<div class='form-group ${error != null ? 'has-error' : ''}'>
											<label class='font-awesome'>Datum</label>

											<form:input type="date" class="form-control" id="datum"

												path="datum" placeholder='Datum'
												value="${dokument.datum}" />
											<p class="help-block">
												<form:errors path="datum" class="help-block" />
											</p>
										</div>
																			
										
									<div class="form-group"${error != null ? 'has-error' : ''}'> 
											<label class='font-awesome'>Magacin</label> 

											<form:select path="Magacini" class="form-control"> 
												<form:options items="${eMagacini}" /> 
											</form:select> 

											<p class="help-block"> 
												<form:errors path="Magacini" class="help-block" /> 
											</p> 

										</div>		
						
										<div class="form-group"${error != null ? 'has-error' : ''}'>
											<label class='font-awesome'>Partner</label>

											<form:select path="Partner" class="form-control">
												<form:options items="${ePartner}" />
											</form:select>

											<p class="help-block">
												<form:errors path="Partner" class="help-block" />
											</p>
										</div>	
										
										<div class='form-group'>
											<label class='font-roboto'>Napomena</label>
											<%-- 									<textarea class="form-control" name='napomena' path='napomena'  placeholder='Unesite napomenu' value="${task.napomena}"></textarea> --%>
											<form:textarea type="text" class="form-control" id="napomena"
												path="napomena" value="${dokument.napomena}" />
											<p class="help-block">
												<form:errors path="napomena" class="help-block" />
											</p>
										</div>
										
										<div class='form-group'>
											<label class='font-roboto'>Iznos</label>
											<%-- 									<textarea class="form-control" name='napomena' path='napomena'  placeholder='Unesite napomenu' value="${task.napomena}"></textarea> --%>
											<form:input type="number" class="form-control" id="napomena"
												path="iznos" value="${dokument.iznos}" />
											<p class="help-block">
												<form:errors path="iznos" class="help-block" />
											</p>
										</div>

<%-- 										<c:out value="${model.dokument.aktivan}" /> --%>

<%-- 										<c:if test="${dokument.aktivan}"> --%>
<%-- 											<c:out value="${dokument.code}" /> --%>
<%-- 										</c:if> --%>

										<c:set var="salary" scope="session" value="checked">
										</c:set>
										<c:set var="salary1" scope="session" value="">
										</c:set>

										<c:if test="${dokument.aktivan == true}">
											<c:set var="salary" scope="session" value="checked" />
											<c:set var="salary1" scope="session" value="" />
										</c:if>

										<c:if test="${dokument.aktivan == false}">
											<c:set var="salary1" scope="session" value="checked" />
											<c:set var="salary" scope="session" value="" />
										</c:if>

										<c:if test="${(empty salary) and (empty salary1)}">
											<c:set var="salary" scope="session" value="checked" />
										</c:if>

										<div class='form-group spacer-bottom-30'>
											<label>Aktivan</label><br /> <label class="radio-inline">
												<!--                                     	<input type="radio" name="aktivan"  path='aktivan' -->
												<%--                                     	 checked  value="${task.aktivan}" >Da   --%>
												<input type="radio" name="aktivan" value="1" path='aktivan'
												<c:out value="${salary}"/> />
											</label> <label class="radio-inline"> <%--                                     	<input type="radio" class="col-sm-1" name="aktivan"  path='aktivan' value="${task.aktivan}">Ne --%>
												<input type="radio" class="col-sm-1" name="aktivan"
												value="0" path='aktivan' <c:out value="${salary1}"/> />
											</label>
										</div>

										<button type="submit" class="btn-lg button-novi">
											<i class='fa fa-floppy-o'></i> Save
										</button>
										<button type="reset" class="btn-lg button-novi">
											<i class='fa fa-reply'></i> Cancel
										</button>

									</form:form>
								</div>
							</div>
						</div>
					</div>
					<!-- end of panel -->
				</div>
			</div>

		</div>

	</div>

	<%@ include file="scripts.jsp"%>
</body>
</html>