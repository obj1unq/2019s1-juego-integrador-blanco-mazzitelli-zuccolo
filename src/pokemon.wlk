import wollok.game.*
import estadosYTipo.*
import ataques.*

class Pokemon {

	const tipo 
	var property vida
	var property ataque
	var property defensa
	var property velocidad
	var property estado = natural
	const estadoEvolutivo
	const movimientos = []
	
	var property xp = 0
	var xpAlMorir
	
	constructor(_tipo, _vida, _ataque, _defensa, _velocidad, _xpAlMorir, _estadoEvolutivo) {
      	tipo = _tipo
      	vida = _vida
      	ataque = _ataque
      	defensa = _defensa
      	velocidad = _velocidad
      	xpAlMorir = _xpAlMorir 
      	estadoEvolutivo = _estadoEvolutivo
 	}	

	method image() = "bush.png"
	
	method listaDeMovimientos() = movimientos
	method aprenderMovimiento(movimiento) { movimientos.add(movimiento) }
	
	//Getters
	method exprecienciaAlMorir() = xpAlMorir
	
	//Actions
	method sumarXp(pokemon) { xp += pokemon.xpAlMorir() }
	
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
		/*Visuales ataque 1 ( game.at(0, 0) game.at(1, 0) game.at(2, 0) )
		 * Visuales ataque 1 ( game.at(3, 0) game.at(4, 0) game.at(5, 0) )
		 * Visuales explicacion teclas ( game.at(6, 0) game.at(7, 0) game.at(8, 0) game.at(9, 0))
		 * 
		 */
		
	}
}

class Entrenador {
	
	var property pokemon
	var property position = game.at(0,0)
	
	method image() = "red.png"
}
