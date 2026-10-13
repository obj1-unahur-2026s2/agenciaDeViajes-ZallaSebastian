class Paks {
  var property duracionDeDias
  var property precioBase
  var property coordinadorACargo
  const beneficioEspecials = []
  method agregarBeneficios(beneficios) {
    beneficioEspecials.add(beneficios)
  }
  
  method valorFinalDelPack(beneficio) 

  method premium(packs)  
}

object beneficios {
  const beneficioOpcionales = []
  method agregarBeneficios(nuevosBeneficios) {
    beneficioOpcionales.add(nuevosBeneficios)
  }
  method sumaTotalDeBeneficio() = beneficioOpcionales.sum({b => b.costo()})

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
  var property provinciaDeDestino
  const actividades = [] // es una lista de strings
  method agregarNuevaActividad(nuevaActividad) {
    actividades.add(nuevaActividad)
  }
 override method valorFinalDelPack(beneficio) =  (precioBase + beneficio.sumaTotalDeBeneficios())
 override method premium(packs) {
   packs.duracionDeDias() + 10
   coodinador.rolQueCumple() == "altamenteCalificado"
 }
  
}

class Internacional inherits Paks{
  var property paisDeDestino
  var property esInteresante 
  const escalas = []
  method agregarEscalas(nuevaEscala) {
    escalas.add(nuevaEscala)
  }
  method cantidadDeEscalas() = escalas.size()
  
  override method valorFinalDelPack(beneficio) = (precioBase + beneficio.sumaTotalDeBeneficios()) * 0.8
  override method premium(packs) {
  esInteresante = true
  packs.duracionDeDias() + 20
  self.cantidadDeEscalas() == 0
  }
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

class Provinciales inherits Nacional {
  override method premium(packs) {
   packs.actividades()
   
  } 
}





