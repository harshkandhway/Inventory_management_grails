package inventory_management

import org.codehaus.groovy.grails.orm.hibernate.metaclass.ExecuteQueryPersistentMethod;

import grails.converters.JSON

class CustomerController {
	def index = {
		//		def customerInstance = Customer.list()
		//		println customerInstance
		//				render(view: "index", model: [customerInstanceList: customerInstance])

	}

	//	def showTable = {
	//		render (view: "_create")
	//	}

	def getData = {
		List<Object> data = new ArrayList()
		//		List<Customer> customer = Customer.list();
		List<Customer> customer = Customer.executeQuery("FROM Customer c")
		println 'customer is :'+customer
		if(customer) {
			customer.each {
				data << [
					'<span class="cust-id" id="editBtn'+it?.id+'" data-cust-id="'+it?.id+'" style="cursor:pointer">'+it?.id+'</span>',
					it?.email,
					it?.firstName,
					it?.lastName,
					it?.phone,
					it?.totalPoints,
					'<button type="button" id="deleteCustomerBtn'+it?.id+'" data-cust-id="'+it?.id+'" class="btn btn-danger customer-delete-btn">Delete</button>'
				]
			}
		}

		HashMap<String, List<Object>> jsonData = ["aaData": data]
		render jsonData as JSON
	}

	def update = {
		try{
			println "params is :"+params
			HashMap<String, Object> customerMap = new HashMap<String, Object>()
			Customer customer = null
			if(params.custId) {
				customer = Customer.get(params.custId?.toString()?.toLong())
				if(customer) {
					customerMap.put("firstName", customer?.firstName)
					customerMap.put("lastName", customer?.lastName)
					customerMap.put("phone", customer?.phone)
					customerMap.put("email", customer?.email)
				}
				render customerMap as JSON
			}
			//			def singleData = [customer: customer]
			//			println singleData
			//			render singleData as JSON
			//			render (view: "_create", model: [customer: customer])
		}

		catch(Exception e){
			println "error in updateCustomer:"+e
		}
	}

	def create = {
		try{
			String msg = ""
			def point = 0
			def customer = Customer.findByEmail(params.inputEmail)

			if(!customer){
				customer = new Customer()
				customer.totalPoints = point;
			}
			customer?.phone = params?.phone.toString().toLong()
			customer?.email = params?.inputEmail
			customer?.lastName = params?.lastName
			customer?.firstName = params?.firstName
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