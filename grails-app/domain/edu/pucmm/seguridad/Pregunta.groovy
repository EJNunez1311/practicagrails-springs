package edu.pucmm.seguridad

class Pregunta {

    String respuesta1
    String respuesta2
    String respuesta3
    String respuesta4
    Usuario usuario

    static constraints = {
        respuesta1 blank: false
        respuesta2 blank: false
        respuesta3 blank: false
        respuesta4 blank: false
        usuario nullable: true

    }
}
