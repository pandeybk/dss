package com.dss

class EmployeeService {

    def lockEmploye(BigInteger empId)
    {
        Employee employee = Employee.findById(empId)
        if (employee == null)
        {
            flash.lockmsg = "Employee not found";
            return ;
        }
        employee.isActive = false;
        employee.save();
    }

    def unlockEmploye(BigInteger empId)
    {
        Employee employee = Employee.findById(empId)
        if (employee == null)
        {
            flash.lockmsg = "Employee not found";
            return ;
        }
        employee.isActive = true;
        employee.save();
    }

    def termEmployee(BigInteger empId, Date termDate)
    {
        Employee employee = Employee.findById(empId);
        if (employee == null)
        {
            flash.termmsg = "Employee not found";
            return;
        }

        employee.termedDate = termDate;
        employee.save();
    }

    def untermEmployee(BigInteger empId)
    {
        Employee employee = Employee.findById(empId);
        if (employee == null)
        {
            flash.termmsg = "Employee not found";
            return;
        }

        employee.termedDate = null;
        employee.save();
    }
}
