package practicagrails.springs

import edu.pucmm.seguridad.Pregunta
import grails.plugin.springsecurity.annotation.Secured


@Secured(["ROLE_ADMIN"])
class AdminZoneController {

    def index() { }

    def graphs(){
        [pregunta: Pregunta.list()]
    }
}
