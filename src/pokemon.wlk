import wollok.game.*
import estadosYTipo.*
import ataques.*

class Pokemon {

	var tipo 	
	var property vida
	var property fuerza
	var property velocidad

	var property xp = 0
	var xpAlMorir
	
	var property estado = natural

	var property position
	
	constructor(_tipo, _vida, _fuerza, _velocidad, _xpAlMorir) {

      	tipo = _tipo
      	vida = _vida
      	fuerza = _fuerza
      	velocidad = _velocidad
      	xpAlMorir = _xpAlMorir 
 	}	
	
	method image() = "bush.png"
	
	//Getters
	method exprecienciaAlMorir() = xpAlMorir
		
	method sumarXp(pokemon) { xp += pokemon.xpAlMorir() }
	
	method atacar(pokemon, ataque) {
		
		pokemon.recibirAtaque(ataque)
	}
	
	method recibirAtaque(ataque) {
		vida -= ataque.danio()
		ataque.cambiarEstado(self)
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
	
	method image() = "ash.png"
}

class PokemonFase1 inherits Pokemon {
	
}

class PokemonFase2 inherits Pokemon {
	
}

class PokemonFase3 inherits Pokemon {
	
}