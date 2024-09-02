package usermanagementapp

import grails.gorm.transactions.Transactional

@Transactional
class UserController {

    def index() {
        println("INDEX")
        [users: User.list()]
    }

    def create() {
        println("CREATE")
        [userInstance: new User()]
    }

    def save() {
        println("SAVE")
        def userInstance = new User(params)
        if (userInstance.save(flush: true)) {
            redirect(action: "index")
        } else {
            render(view: "create", model: [userInstance: userInstance])
        }
    }

    def edit(Long id) {
        println("EDIT")
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = "User not found"
            redirect(action: "index")
            return
        }
        [userInstance: userInstance]
    }

    def update(Long id) {
        println("UPDATE")
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = "User not found"
            redirect(action: "index")
            return
        }

        userInstance.properties = params
        if (userInstance.save(flush: true)) {
            redirect(action: "index")
        } else {
            render(view: "edit", model: [userInstance: userInstance])
        }
    }

    def delete(Long id) {
        println("DELETE")
        def userInstance = User.get(id)
        if (userInstance) {
            userInstance.delete(flush: true)
        }
        redirect(action: "index")
    }
}
