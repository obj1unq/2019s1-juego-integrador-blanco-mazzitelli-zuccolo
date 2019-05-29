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
}

class PokemonFase1 inherits Pokemon {
	
}

class PokemonFase2 inherits Pokemon {
	
}

class PokemonFase3 inherits Pokemon {
	
}