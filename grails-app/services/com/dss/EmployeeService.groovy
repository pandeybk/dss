package com.dss

class EmployeeService {

    def lockEmploye(BigInteger empId) {
        Employee employee = Employee.findById(empId)
        if (employee == null)
        {
            flash.lockmsg = "Employee not found";
            return ;
        }
        employee.isActive = false;
        employee.save();
    }

    def unlockEmploye(BigInteger empId) {
        Employee employee = Employee.findById(empId)
        if (employee == null)
        {
            flash.lockmsg = "Employee not found";
            return ;
        }
        employee.isActive = true;
        employee.save();
    }
}
