package com.library



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LibrarianController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Librarian.list(params), model:[librarianInstanceCount: Librarian.count()]
    }

    def show(Librarian librarianInstance) {
        respond librarianInstance
    }

    def create() {
        respond new Librarian(params)
    }

    @Transactional
    def save(Librarian librarianInstance) {
        if (librarianInstance == null) {
            notFound()
            return
        }

        if (librarianInstance.hasErrors()) {
            respond librarianInstance.errors, view:'create'
            return
        }

        librarianInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'librarian.label', default: 'Librarian'), librarianInstance.id])
                redirect librarianInstance
            }
            '*' { respond librarianInstance, [status: CREATED] }
        }
    }

    def edit(Librarian librarianInstance) {
        respond librarianInstance
    }

    @Transactional
    def update(Librarian librarianInstance) {
        if (librarianInstance == null) {
            notFound()
            return
        }

        if (librarianInstance.hasErrors()) {
            respond librarianInstance.errors, view:'edit'
            return
        }

        librarianInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Librarian.label', default: 'Librarian'), librarianInstance.id])
                redirect librarianInstance
            }
            '*'{ respond librarianInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Librarian librarianInstance) {

        if (librarianInstance == null) {
            notFound()
            return
        }

        librarianInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Librarian.label', default: 'Librarian'), librarianInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }




def login() {
 if (params.cName)
 return [cName:params.cName, aName:params.aName]

}

def logout = {
 session.user = null
 redirect(uri:'/')
}



def validate() {
 def user = Librarian.findByUserName(params.username)
 if (user && user.password == params.password){
 session.user = user
 if (params.cName)
 redirect controller:params.cName, action:params.aName
 else
 redirect controller:'course', action:'index'
 } else{
 flash.message = "Invalid username and password."
 render view:'login'
 }
 }







    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'librarian.label', default: 'Librarian'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
