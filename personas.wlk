class JuegoGalactico{

}
class Persona{
  const nombre
  var edad
  var recursos=20 //monedas que tiene una persona que puede ir variando

  method esDestacado()
  {
    const seCumpleLaCondicion=self.edadEstaEntre(18,65) or self.tieneMasDe_Recursos(30)
    if(seCumpleLaCondicion)
    {
      console.println(nombre+" es destacado!")
    }
    else
    {
      console.println(nombre+" no es destacado!")
    }
    
    return seCumpleLaCondicion
  }

  method edadEstaEntre(unaEdad1,unaEdad2)
  {
    const seCumpleLaCondicion=edad>=unaEdad1 and edad<=unaEdad2
    if(seCumpleLaCondicion)
    {
      console.println(nombre+" de edad "+edad+" esta entre "+unaEdad1+" y "+unaEdad2)
    }
    else
    {
      console.println(nombre+" de edad "+edad+" no esta entre "+unaEdad1+" y "+unaEdad2)
    }
    return seCumpleLaCondicion
  }

  method tieneMasDe_Recursos(unaCantidadDeRecursos)
  {
    const seCumpleLaCondicion=recursos>30
    if(seCumpleLaCondicion)
    {
      console.println(nombre+" teniendo "+recursos+" recursos, tiene mas de "+unaCantidadDeRecursos+" recursos!")
    }
    else
    {
      console.println(nombre+" teniendo "+recursos+" recursos, no tiene mas de "+unaCantidadDeRecursos+" recursos!")
    }
    return seCumpleLaCondicion
  }

  method ganar_Monedas(unaCantidadDeMonedas)
  {
    console.println(nombre+" gana "+unaCantidadDeMonedas+" monedas!")
    console.println("Monedas: "+recursos+" -> "+(recursos+unaCantidadDeMonedas))
    recursos=recursos+unaCantidadDeMonedas
  }

  method gastar_Monedas(unaCantidadDeMonedas)
  {
    console.println(nombre+" gasta "+unaCantidadDeMonedas+" monedas!")
    console.println("Monedas: "+recursos+" -> "+(0.max(recursos-unaCantidadDeMonedas)))
    recursos=0.max(recursos-unaCantidadDeMonedas)
  }

  method cumplir_Anios(unaCantidadDeAnios)
  {
    console.println(nombre+" cumple "+unaCantidadDeAnios+" años!")
    console.println("Edad: "+recursos+" -> "+(0.max(recursos-unaCantidadDeAnios)))
    edad=edad+unaCantidadDeAnios
  }

  method recursos(){
    return recursos
  }
}