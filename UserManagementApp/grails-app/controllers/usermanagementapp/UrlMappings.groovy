package usermanagementapp

class UrlMappings {

    static mappings = {
        "/user/$action?/$id?(.$format)?" {
            controller = 'user'
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/user/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
