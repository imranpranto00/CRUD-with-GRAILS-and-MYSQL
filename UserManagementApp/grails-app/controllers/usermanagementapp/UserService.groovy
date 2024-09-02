package usermanagementapp

import grails.gorm.transactions.Transactional

@Transactional
class UserService {

    def createUser(params) {
        def user = new User(params)
        if (!user.save(flush: true)) {
            return null
        }
        return user
    }

    def updateUser(id, params) {
        def user = User.get(id)
        if (user) {
            user.properties = params
            if (!user.save(flush: true)) {
                return null
            }
        }
        return user
    }

    def deleteUser(id) {
        def user = User.get(id)
        if (user) {
            user.delete(flush: true)
        }
    }
}
