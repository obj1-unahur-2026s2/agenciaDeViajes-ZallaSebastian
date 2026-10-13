class Paks {
  var property duracionDeDias
  var property precioBase
  var property coordinadorACargo
  const beneficioEspecials = []
  method agregarBeneficios(beneficios) {
    beneficioEspecials.add(beneficios)
  }
  
  method valorFinalDelPack(beneficio) 
}

object beneficios {
  const beneficioOpcionales = []
  method agregarBeneficios(nuevosBeneficios) {
    beneficioOpcionales.add(nuevosBeneficios)
  }
  method sumaTotalDeBeneficio() = beneficioOpcionales.sum()

}

object trasladosPrivados {
  var property costo = 2 
  var property estaVigente = true
}

object salasVIP {
   var property costo = 2
   var property estaVigente = false
}

object adicionales {
  var property costo = 2
  var property estaVigente = true
}


class Nacional inherits Paks {
  var provinciaDeDestino
  const actividades = [] // es una lista de strings
  method agregarNuevaActividad(nuevaActividad) {
    actividades.add(nuevaActividad)
  }
 override method valorFinalDelPack(beneficio) =  (precioBase + beneficio.estaVigente())

  
}

class Internacional inherits Paks{
  var paisDeDestino
  const escalas = []
  method agregarEscalas(nuevaEscala) {
    escalas.add(nuevaEscala)
  }
  method cantidadDeEscalas() = escalas.size()
  
  override method valorFinalDelPack(beneficio) = (precioBase + beneficio.estaVigente()) * 0.8
}


object coodinador {
    var rol = "guia"
  const cantidadDeVaje = []
  method agrefarViajes(nuevoViaje) {
    cantidadDeVaje.add(nuevoViaje)
  }
  method cantidadDeViaje() = cantidadDeVaje.size() 

  method altamenteCalificado() =  cantidadDeVaje.size() > 20 && self.rolQueCumple() 
  
  method rolQueCumple() = rol
  method cambiarRol(nuevoRol) {
    rol = nuevoRol
  }
}





