class Paks {
  var property duracionDeDias
  var property precioBase
  var property coordinadorACargo
  
  method valorFinalDelPack(beneficio) = (precioBase + beneficio.estaVigente()) 
}

class BeneficiosEspecial {
  var translado
  var salaVIP
  var adicionales
  var property  estaVigente 
  const beneficos = []
  method agregarPacks(nuevospaks) {
    beneficos.add(nuevospaks)
  }
  method costo(paks) = beneficos.map({paks => paks.precioBase()})
 method estaVijente(paks) = beneficos.any(paks.estaVijente())
}


class Nacional inherits Paks {
  var provinciaDeDestino
  const actividades = [] // es una lista de strings
  method agregarNuevaActividad(nuevaActividad) {
    actividades.add(nuevaActividad)
  }


  
}

class Internacional inherits Paks{
  var paisDeDestino
  const escalas = []
  method agregarEscalas(nuevaEscala) {
    escalas.add(nuevaEscala)
  }
  method cantidadDeEscalas() = escalas.size()
  
  override method valorFinalDelPack(beneficio) = super(beneficio) * 0.8
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





