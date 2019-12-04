package practicagrails.springs

import edu.pucmm.seguridad.Pregunta
import edu.pucmm.seguridad.Usuario
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN"])
class BarcampController {

    def springSecurityService
    SaveEncuestaService saveEncuestaService

    def index() {
        redirect(uri:"/Barcamp/encuentas")
    }
    def encuentas(){

    }
    def save(Pregunta pregunta){
        println "propiedades: "+params.properties
      def UsuarioActual = (Usuario) springSecurityService.getCurrentUser()
        saveEncuestaService.save(pregunta, UsuarioActual)
        render(view:"encuentas")
    }
}
