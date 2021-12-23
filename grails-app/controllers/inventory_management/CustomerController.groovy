package inventory_management

import grails.converters.JSON

class CustomerController {
	def index = {
//		def customerInstance = Customer.list()
//		println customerInstance
//				render(view: "index", model: [customerInstanceList: customerInstance])
		
	}
	
	def getData = {
		List<Object> data = new ArrayList()
		List<Customer> customer = Customer.list();
		if(customer) {
			customer.each {
				data << [
					it?.id,
					it?.email,
					it?.firstName,
					it?.lastName,
					it?.phone,
					'<button type="button" id="deleteCustomerBtn" data-cust-id="'+it?.id+'" class="btn btn-danger">Delete</button>'
				]
			}
		}
		
		HashMap<String, List<Object>> jsonData = ["aaData": data]
		render jsonData as JSON
	}
	
	def update = {
		 def customer = null
		 if(params.id) {
		 customer = Customer.get(params.id?.toString()?.toLong())
		 }
		 render(view: "create", model: [customer: customer])
	}
	
	def create = {
		try{
			String msg = ""
			def point = 0
			println "params are:" + params
			def customer = Customer.get(params.customerId?.toString()?.toLong())
			
			if(!customer){
				customer = new Customer()
				customer.totalPoints = point;
				println "customer old " + customer.phone + customer.email
			}
				
			println "params?.phoneNo is :"+params?.phoneNo
			customer?.phone = params?.phoneNo.toString().toLong()
			customer?.email = params?.inputEmail1
			customer?.lastName = params?.lastName
			customer?.firstName = params?.firstName
			
			println customer
			if(customer.save(flush:true)) render "success"
			else
				render "error"
		}
		catch(error){
		println error
		}
	}

    def deleteCustomer = {
		try{
			String msg = 'failed'
			def custIns = Customer.get(params.custId.toString().toLong())
			if(custIns){
				custIns.delete(flush: true)
				msg = "success"
			}
			println "msg is :"+msg
			render msg
		} catch(Exception e){
			println "error in deleteCustomer is :"+e
		}
	}
}