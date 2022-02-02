package inventory_management

import java.util.List;

class AwardService {

	static transactional = true

	def serviceMethod() {
	}

	public List<Customer> getAllCustomer() {
		//def departmentList = [] // other way to declare a list variable
		//Customer customerList = new Customer()
		List<Customer> customerList = Customer.list() ?: []
		return customerList
	}
	public Customer getSingleCustomer(Long id){
		Customer customer = Customer.get(id)
		return customer
	}
	
	public Award getAward(def q){
		Award award
		if(q instanceof Customer) {
			award = Award.findByCustomer(q)
		} else {
			award = Award.get(q?.toString()?.toLong())
		}
		return award
	}
	
	public Award getAwardWithId(Long id){
		Award award = Award.get(id?.toString()?.toLong())
		return award
	}
	
//	public getAwards(id){
//		Award awards = Award.get(id)
//		return award
//	}
}
