package com.dss

class Category {

	String categoryName
	Boolean isDeductible

	static hasMany = [employeeCategories: EmployeeCategory]

	static mapping = {
		id column: "category_id"
		version false
        categoryName sqlType: 'varchar(50)', length: 50
        isDeductible sqlType: 'bool', length: 1, defaultValue: true
	}

	static constraints = {
		categoryName maxSize: 50
        isDeductible maxSize: 1
	}
}
