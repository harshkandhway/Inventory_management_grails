package inventory_management

import grails.converters.JSON
import java.text.SimpleDateFormat

class AwardController {
	AwardService awardService
	//	static scaffold = true

	def index = {
		//		def customer = Customer.list()
		//		def award = Award.list()
		//		println award
		//		render(view: "index", model: [award: award])
		List<Customer> customerList = awardService.getAllCustomer()
		//		Customer customer = Customer.list()
		render(view: "index", model: [customer: customerList])
	}

	def getAward = {
		List<Object> data = new ArrayList()
		//		List<Award> award = Award.list();
		List<Award> award = Award.executeQuery("FROM Award a")
		if(award) {
			award.each {
				data << [
					it?.awardDate,
					it?.type,
					it?.customer.firstName,
					it?.point,
					'<button type="button" id="edit'+it?.id+'" data-award-id="'+it?.id+'" class="btn btn-warning award-edit-btn">Edit</button>'
				]
			}
		}
		HashMap<String, List<Object>> jsonData = ["aaData": data]
		render jsonData as JSON
//		render(view: "index", model: [award: award])
	}

	def create = {
		println params.customerId
		def msg = "success"
		Customer customer = awardService.getSingleCustomer(params.customerId.toString().toLong())
		Award award = awardService.getAward(customer)
		if(!award) award = new Award()
		def pattern = "yyyy-MM-dd"
		def input = params.awardDate
		award?.awardDate = new SimpleDateFormat(pattern).parse(input)
		award?.type = params.awardType
		award?.customer = customer
		award?.point = params.point
		if(award.save(flush:true))
			render msg
		else
			render "error"
	}
	
	def updateAward = {
		HashMap<String, Object> awardMap = new HashMap<String, Object>()
		if(params.awardId){
			Award award = awardService.getAward(params.awardId)
//			Award award = Award.get(params.awardId?.toString()?.toLong())
			if(award){
//				awardMap.put("awardDate", award?.awardDate)
				awardMap.put("type", award?.type)
				awardMap.put("customer", award?.customer)
				awardMap.put("point", award?.point)
			}
			render awardMap as JSON
		}
	}
	
	def deleteAward = {
		Award award = awardService.getAward(params.deleteId)
		if(award){
			award.delete(flush:true)
			render "success"
		}
		
	}
}
