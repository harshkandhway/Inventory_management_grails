package inventory_management

class Product {
	String productName
	double price
	String sku
	static hasMany = [orderItem:OrderItem]
    static constraints = {
		productName(nullable: true, maxSize: 255)
		price()
		sku(nullable: true, maxSize: 255)
    }
}
