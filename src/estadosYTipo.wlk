import pokemon.*
import ataques.*
import entrenador.*

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
	const debilidades = []
	
	method agregarDebilidad(debilidad) = debilidades.add(debilidad)
	method listaDeDebilidades() = debilidades
}

const planta = new Tipo()
const agua = new Tipo()
const fuego = new Tipo()
const normal = new Tipo()
const volador = new Tipo()
const siniestro = new Tipo()
const psiquico = new Tipo()
const veneno = new Tipo()
