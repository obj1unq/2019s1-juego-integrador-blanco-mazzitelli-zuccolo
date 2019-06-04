import wollok.game.*
import estadosYTipo.*
import ataques.*
import visualBatalla.*
import mapa.*

class Pokemon {

	const tipo 
	var property vida
	var property ataque
	var property defensa
	var property estado = natural
	const estadoEvolutivo
	const movimientos = []
	var image = "pasto.png"
	const image2
	
	constructor(_image, _tipo, _vida, _ataque, _defensa, _estadoEvolutivo) {
      	image2 = _image
      	tipo = _tipo
      	vida = _vida
      	ataque = _ataque
      	defensa = _defensa
      	estadoEvolutivo = _estadoEvolutivo
 	}	

	method image() = image
	
	method cambiarImagen() { image = image2 }
	
	method listaDeMovimientos() = movimientos
	method aprenderMovimiento(movimiento) { movimientos.add(movimiento) }
	
	//Actions
	
	method atacar(pokemon, movimiento) {	
		pokemon.recibirAtaque(movimiento)
	}
	
	method recibirAtaque(movimiento) {
		vida -= movimiento.danio()
		movimiento.cambiarEstado(self)
	}
	
	//Colision con Entrenador
	
	method colisionasteCon(entrenador) {
		
		game.clear()
		entrenador.pokemon().cambiarImagen()
		self.cambiarImagen()
		visualBatalla.dibujarVisualBatalla(entrenador.pokemon(), self)
	}
}

class Entrenador {
	
	var property pokemon
	
	var property lastPosition
	var property position = game.at(2,1)
	
	method image() = return "ash.png"
	
	method move(nuevaPosicion) {
		lastPosition = position
		self.position(nuevaPosicion)
	}
	method stop(){
		self.position(lastPosition)
	}
}
