package com.demo

import grails.converters.JSON

class UserController {

    def index = { }
	
	def getData = {
		List<Object> data = new ArrayList()
		List<User> user = User.executeQuery("FROM User u")
		println 'user is :'+user
		if(user) {
			user.each {
				data << [
						'<span class="cust-id" id="editBtn'+it?.id+'" data-cust-id="'+it?.id+'" style="cursor:pointer">'+it?.id+'</span>',
						it?.username,
						it?.firstName,
						it?.lastName,
						it?.phone,
						'<button type="button" id="deleteCustomerBtn'+it?.id+'" data-cust-id="'+it?.id+'" class="btn btn-danger customer-delete-btn">Delete</button>'
				]
			}
		}
		
		HashMap<String, List<Object>> jsonData = ["aaData": data]
		render jsonData as JSON
	}
}
