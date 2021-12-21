package inventory_management

class Customer {
	String firstName
	String lastName
	long phone
	String email
	Integer totalPoints
	// defines relationship between different domain class
	// hasMany is used when it is parent to someone.
	static hasMany = [awards:Award]

    static constraints = {
		phone()
		firstName(nullable: true, maxSize: 255)
		lastName(nullable: true, maxSize: 255)
		email(nullable: true, email: true)
		totalPoints(nullable: false, max: 10)
    }
}
