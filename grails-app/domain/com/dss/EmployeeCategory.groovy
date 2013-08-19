package com.dss

class EmployeeCategory {

	Long amount
	Integer percentage
	Employee employee
	Category category

	static belongsTo = [Category, Employee]

	static mapping = {
		id column: "emp_cat_id"
		version false
	}
}
