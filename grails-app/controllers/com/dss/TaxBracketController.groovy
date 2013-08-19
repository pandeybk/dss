package com.dss

import org.springframework.dao.DataIntegrityViolationException

class TaxBracketController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [taxBracketInstanceList: TaxBracket.list(params), taxBracketInstanceTotal: TaxBracket.count()]
    }

    def create() {
        [taxBracketInstance: new TaxBracket(params)]
    }

    def save() {
        def taxBracketInstance = new TaxBracket(params)
        if (!taxBracketInstance.save(flush: true)) {
            render(view: "create", model: [taxBracketInstance: taxBracketInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'taxBracket.label', default: 'TaxBracket'), taxBracketInstance.id])
        redirect(action: "show", id: taxBracketInstance.id)
    }

    def show(Long id) {
        def taxBracketInstance = TaxBracket.get(id)
        if (!taxBracketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'taxBracket.label', default: 'TaxBracket'), id])
            redirect(action: "list")
            return
        }

        [taxBracketInstance: taxBracketInstance]
    }

    def edit(Long id) {
        def taxBracketInstance = TaxBracket.get(id)
        if (!taxBracketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'taxBracket.label', default: 'TaxBracket'), id])
            redirect(action: "list")
            return
        }

        [taxBracketInstance: taxBracketInstance]
    }

    def update(Long id, Long version) {
        def taxBracketInstance = TaxBracket.get(id)
        if (!taxBracketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'taxBracket.label', default: 'TaxBracket'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (taxBracketInstance.version > version) {
                taxBracketInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'taxBracket.label', default: 'TaxBracket')] as Object[],
                          "Another user has updated this TaxBracket while you were editing")
                render(view: "edit", model: [taxBracketInstance: taxBracketInstance])
                return
            }
        }

        taxBracketInstance.properties = params

        if (!taxBracketInstance.save(flush: true)) {
            render(view: "edit", model: [taxBracketInstance: taxBracketInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'taxBracket.label', default: 'TaxBracket'), taxBracketInstance.id])
        redirect(action: "show", id: taxBracketInstance.id)
    }

    def delete(Long id) {
        def taxBracketInstance = TaxBracket.get(id)
        if (!taxBracketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'taxBracket.label', default: 'TaxBracket'), id])
            redirect(action: "list")
            return
        }

        try {
            taxBracketInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'taxBracket.label', default: 'TaxBracket'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'taxBracket.label', default: 'TaxBracket'), id])
            redirect(action: "show", id: id)
        }
    }
}
