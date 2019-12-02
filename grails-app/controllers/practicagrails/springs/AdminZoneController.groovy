package practicagrails.springs

import grails.plugin.springsecurity.annotation.Secured


@Secured(["ROLE_ADMIN"])
class AdminZoneController {

    def index() { }

    def graphs(){

    }
}
