package dss

class Category {

	String categoryName
	Boolean isDeductible

	static hasMany = [employeeCategories: EmployeeCategory]

	static mapping = {
		id column: "category_id"
		version false
	}

	static constraints = {
		categoryName maxSize: 45
	}
}
