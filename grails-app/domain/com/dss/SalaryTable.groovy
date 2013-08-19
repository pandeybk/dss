package dss

class SalaryTable {

	Long taxPaid
	Date salaryPaidDate
	Long netSalaryPayment
	Long employeeId
	Employee employee

	static belongsTo = [Employee]

	static mapping = {
		id column: "salary_id", generator: "assigned"
		version false
        employee insertable: false
        employee updateable: false
	}

	static constraints = {
		taxPaid nullable: true
		salaryPaidDate nullable: true
		netSalaryPayment nullable: true

	}
}
