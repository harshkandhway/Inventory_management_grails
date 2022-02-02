package com.demo

class User {
	String firstName
	String lastName
	long phone
	String username
	static hasMany = [city:City]

    static constraints = {
		phone()
		firstName(nullable: true, maxSize: 255)
		lastName(nullable: true, maxSize: 255)
		username(nullable: true, email: true)
    }
}
