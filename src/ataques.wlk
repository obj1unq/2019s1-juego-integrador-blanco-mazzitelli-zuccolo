import pokemon.*
import estadosYTipo.*

object latigoCepa {
	const danio = 10
	
	method danio() = danio
	method cambiarEstado(pokemon) { }
}

object polvoVeneno {
	const danio = 0
	
	method danio() = danio
	method cambiarEstado(pokemon) {	
		pokemon.estado(envenenado)
	}
}

object lanzallamas {
	const danio = 10
	
	method danio() = danio
	method cambiarEstado(pokemon) { }
}

object fuegoFatuo {
	const danio = 0
	
	method danio() = danio
	method cambiarEstado(pokemon) { 
		pokemon.estado(quemado)
	}
}

object pistolaDeAgua {
	const danio = 10
	
	method danio() = danio
	method cambiarEstado(pokemon) { }
}

object hidroBomba {
	const danio = 400050
	
	method danio() = danio
	method cambiarEstado(pokemon) { }
}
