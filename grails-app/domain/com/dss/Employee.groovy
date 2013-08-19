package com.dss

class Employee {

	String firstName
	String middleName
	String lastName
	String email
	String maritalStatus
	String designation
	Date joinedDate
	Date termedDate
	String phoneMobile
	String phoneHouse
	String personalMail
	Date dob
	String addressTemporary
	String addressPermanent
	String citizenshipNo
	String bankAccountNo
	String panNo
	Long basicSalary

	static hasMany = [employeeCategories: EmployeeCategory,
	                  salaryTables: SalaryTable,
	                  users: User]

	static mapping = {
		id column: "emp_id"
		version false
	}

	static constraints = {
		firstName maxSize: 45
		middleName nullable: true, maxSize: 45
		lastName maxSize: 45
		email maxSize: 100
		maritalStatus maxSize: 45
		designation maxSize: 45
		phoneMobile maxSize: 45
		phoneHouse nullable: true, maxSize: 45
		personalMail maxSize: 100
		addressTemporary nullable: true, maxSize: 200
		addressPermanent maxSize: 200
		citizenshipNo maxSize: 45
		bankAccountNo maxSize: 45
		panNo maxSize: 45
	}
}
