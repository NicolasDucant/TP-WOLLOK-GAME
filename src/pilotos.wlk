import wollok.game.*

class Piloto {
    const property nombre 
    const property pais 
    var property habilidad 
    method image() = nombre.toLowerCase().replaceAll(" ", "") + ".png"

}

const colapinto = new Piloto(
  nombre = "Franco Colapinto",
  pais = "Argentina",
  habilidad = 85
)

object autoSeleccionado {
    const property piloto = colapinto
    var property neumaticos = neumaticosBlandos
    var property estrategia = estrategiaConservadora
    var property combustible = 100
    var property position = game.origin()

    method image() = piloto.image()

    method pararEnBoxes(neumaticosNuevos){
        neumaticos = neumaticosNuevos
        combustible = 100
    }

    method irA(nuevaPosicion){
        position = nuevaPosicion
    }
}