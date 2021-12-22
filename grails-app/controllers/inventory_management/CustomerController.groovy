package inventory_management

import grails.converters.JSON

class CustomerController {
	def index = {
		def customerInstance = Customer.list()
		println customerInstance
				render(view: "index", model: [customerInstanceList: customerInstance])
	}
	
	def create = {
		try{
			String msg = ""
			def point = 0
			println "params are:" + params
			def customer = Customer.findByEmail(params.inputEmail1)
			
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

    
}