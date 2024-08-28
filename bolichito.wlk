import objetos.*
import personas.*
import colores.*
import materiales.*

object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota

    method objetoEnVidriera(unObjeto) {
        objetoEnVidriera = unObjeto
    }
    method objetoEnVidriera() = objetoEnVidriera 

    method objetoEnMostrador(unObjeto) {
        objetoEnMostrador = unObjeto
    } 
    method objetoEnMostrador() = objetoEnMostrador

    method esBrillante() {
        return objetoEnMostrador.material().esBrillante()
        and objetoEnVidriera.material().esBrillante()
    }

    method esMonocromatico() {
        return objetoEnVidriera.color() == objetoEnMostrador.color()
    }  

    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }

    method hayObjetoDeColor(unColor) {
        return objetoEnMostrador.color() == unColor
        || objetoEnVidriera.color() == unColor
    }

    method puedeMejorar() {
        return !self.estaEquilibrado() or self.esMonocromatico()
    }

    method lePuedoOfrecer(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
    }

}


object arito {
    var peso = 180
    var color = celeste
    method material() = cobre
    method peso(unPeso) {
        peso = unPeso
    }

    method peso() = peso
    method color(unColor) {
    color = unColor
  }

    method color() = color  
  
}

