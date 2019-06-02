import pokemon.*
import ataques.*

object natural {
	
	method efecto(pokemon) {}
	
	method efectoPeriodico(pokemon) {} 
}

object quemado {
	
	method efecto(pokemon) { pokemon.fuerza(pokemon.fuerza() / 2) }
	
	method efectoPeriodico(pokemon) { pokemon.vida(pokemon.vida() * 0.9) }
}

object envenenado {
	
	method efecto(pokemon) { pokemon.velocidad(pokemon.velocidad() / 2) }
	
	method efectoPeriodico(pokemon) { pokemon.vida(pokemon.vida() * 0.9) }
}

class Tipo {
	
	var property debilidad = 1
	
	const ataques = []
}