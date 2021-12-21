package inventory_management

class Award {
	
	Date awardDate
	String type
	Integer point
	//static means that the var we are defining will be same for every Award class
	// When model is a child to someone we use belongs to
	
	static belongsTo = [customer:Customer]

    static constraints = {
		type(inList: ["Purchase", "Reward"])
    }
	
}
