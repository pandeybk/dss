package com.dss

import org.springframework.dao.DataIntegrityViolationException

class EmployeeCategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [employeeCategoryInstanceList: EmployeeCategory.list(params), employeeCategoryInstanceTotal: EmployeeCategory.count()]
    }

    def create() {
        [employeeCategoryInstance: new EmployeeCategory(params)]
    }

    def save() {
        def employeeCategoryInstance = new EmployeeCategory(params)
        if (!employeeCategoryInstance.save(flush: true)) {
            render(view: "create", model: [employeeCategoryInstance: employeeCategoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'employeeCategory.label', default: 'EmployeeCategory'), employeeCategoryInstance.id])
        redirect(action: "show", id: employeeCategoryInstance.id)
    }

    def show(Long id) {
        def employeeCategoryInstance = EmployeeCategory.get(id)
        if (!employeeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employeeCategory.label', default: 'EmployeeCategory'), id])
            redirect(action: "list")
            return
        }

        [employeeCategoryInstance: employeeCategoryInstance]
    }

    def edit(Long id) {
        def employeeCategoryInstance = EmployeeCategory.get(id)
        if (!employeeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employeeCategory.label', default: 'EmployeeCategory'), id])
            redirect(action: "list")
            return
        }

        [employeeCategoryInstance: employeeCategoryInstance]
    }

    def update(Long id, Long version) {
        def employeeCategoryInstance = EmployeeCategory.get(id)
        if (!employeeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employeeCategory.label', default: 'EmployeeCategory'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (employeeCategoryInstance.version > version) {
                employeeCategoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'employeeCategory.label', default: 'EmployeeCategory')] as Object[],
                          "Another user has updated this EmployeeCategory while you were editing")
                render(view: "edit", model: [employeeCategoryInstance: employeeCategoryInstance])
                return
            }
        }

        employeeCategoryInstance.properties = params

        if (!employeeCategoryInstance.save(flush: true)) {
            render(view: "edit", model: [employeeCategoryInstance: employeeCategoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'employeeCategory.label', default: 'EmployeeCategory'), employeeCategoryInstance.id])
        redirect(action: "show", id: employeeCategoryInstance.id)
    }

    def delete(Long id) {
        def employeeCategoryInstance = EmployeeCategory.get(id)
        if (!employeeCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employeeCategory.label', default: 'EmployeeCategory'), id])
            redirect(action: "list")
            return
        }

        try {
            employeeCategoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'employeeCategory.label', default: 'EmployeeCategory'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'employeeCategory.label', default: 'EmployeeCategory'), id])
            redirect(action: "show", id: id)
        }
    }
}
