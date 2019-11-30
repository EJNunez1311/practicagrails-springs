package practicagrails.springs

import edu.pucmm.seguridad.Pregunta
import edu.pucmm.seguridad.Usuario
import grails.gorm.transactions.Transactional

@Transactional
class SaveEncuestaService {

    def save(Pregunta pregunta, Usuario usuario) {

        pregunta.usuario = usuario
        println "El datos: "+pregunta.properties
        pregunta.save(flush: true, failOnError: true)
    }
}
