<div class="container create-dash">
	<button type="button" class="btn btn-danger" onclick="deleteAward()">Delete</button>
	<g:form name="awardForm" id="awardForm" controller="award" action="create"
		method="post" data-toggle="validator" class="award-form">
		<g:hiddenField id="awardId" name="awardId"
			value="${award ? award.id : ""}" />
		<div class="form-group">
			<label for="awardDate">Award Date</label> <input type="date"
				class="form-control" id="awardDate" name="awardDate"
				placeholder="Enter award date"
				value="${award ? "" : ""}">
		</div>

		<div class="form-group">
				<label for="customerId">Customer Id</label>
				<select class="form-control" id="customerId" name="customerId">
					<g:each in="${customer}" var="thisCustomer" id="customerOptions">
						<option value=${thisCustomer.id}>
							${thisCustomer.firstName}
						</option>
					</g:each>
				</select>
			
		</div>

		<div class="form-group">
			<label for="point">Points</label> <input type="number"
				class="form-control" id="point" name="point"
				placeholder="Enter point" value="${award ? award.point : ""}">
		</div>
		<label for="awardType">Award Type</label>
		<select class="form-control" id="awardType" name="awardType">
			<option value="Purchase">Purchase</option>
			<option value="Reward">Reward</option>
		</select>
		<br />
		<button type="submit" class="btn btn-primary">Save</button>
	</g:form>
</div>