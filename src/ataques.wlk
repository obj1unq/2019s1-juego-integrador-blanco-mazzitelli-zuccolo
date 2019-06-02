import pokemon.*
import estadosYTipo.*
import wollok.game.*

//Ataques de la linea de Charmander.
//Charmander:
object ascuas {
	const potencia = 40
	const tipo = fuego
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {
		if(pokemon.estado() == natural) { self.intentarQuemar(pokemon) }
		else { game.say(self, "¡El estado de" + pokemon + "ya esta alterado!") }
	}
	
	method intentarQuemar(pokemon) {
		if(0.randomUpTo(100).truncate(0) <= 40) { pokemon.estado(quemado) }
		else { }
	}
}

object araniazo {
	const potencia = 40
	const tipo = normal
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

//Charmeleon:
object pirotecnia {
	const potencia = 60
	const tipo = fuego
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {
		if(pokemon.estado() == natural) { self.intentarQuemar(pokemon) }
		else { game.say(self, "¡El estado de" + pokemon + "ya esta alterado!") }
	}
	
	method intentarQuemar(pokemon) {
		if(0.randomUpTo(100).truncate(0) <= 40) { pokemon.estado(quemado) }
		else { }
	}
}

object cuchillada {
	var potencia = 70
	const tipo = normal
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { potencia = potencia*2 } else { } }
}

//Charizard: 
object lanzallamas {
	const potencia = 95
	const tipo = fuego
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {
		if(pokemon.estado() == natural) { self.intentarQuemar(pokemon) }
		else { game.say(self, "¡El estado de" + pokemon + "ya esta alterado!") }
	}
	
	method intentarQuemar(pokemon) {
		if(0.randomUpTo(100).truncate(0) <= 40) { pokemon.estado(quemado) }
		else { }
	}
}

object tajoAereo {
	var potencia = 75
	const tipo = volador
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { potencia = potencia*2 } else { } }
}

//Ataques de la linea de Bulbasaur.
//Bulbasaur:
object latigoCepa {
	const potencia = 40
	const tipo = planta
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

object placaje {
	const potencia = 40
	const tipo = normal
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

//Ivysaur:
object hojaAfilada {
	var potencia = 70
	const tipo = planta
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { potencia = potencia*2 } else { } }
}

object cargaToxica {
	const potencia = 65
	const tipo = veneno
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {
		if(pokemon.estado() == natural) { self.intentarEnvenenar(pokemon) }
		else { game.say(self, "¡El estado de" + pokemon + "ya esta alterado!") }
	}
	
	method intentarEnvenenar(pokemon) {
		if(0.randomUpTo(100).truncate(0) <= 40) { pokemon.estado(envenenado) }
		else { }
	}
}

//Venusaur:
object rayoSolar {
	const potencia = 120
	const tipo = planta
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

object bombaLodo {
	const potencia = 90
	const tipo = veneno
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {
		if(pokemon.estado() == natural) { self.intentarEnvenenar(pokemon) }
		else { game.say(self, "¡El estado de" + pokemon + "ya esta alterado!") }
	}
	
	method intentarEnvenenar(pokemon) {
		if(0.randomUpTo(100).truncate(0) <= 40) { pokemon.estado(envenenado) }
		else { }
	}
}

//Ataques de la linea de Squirtle-
//Squirtle: (+ placaje)
object pistolaAgua {
	const potencia = 40
	const tipo = agua
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

//Wartortle:
object rayoBurbuja {
	const potencia = 60
	const tipo = agua
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { pokemon.velocidad(self.diezPorcientoDe(pokemon)) } else { } }
	method diezPorcientoDe(pokemon) = ( pokemon.velocidad() * 90 ) / 100
}

object mordisco {
	const potencia = 60
	const tipo = siniestro
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

//Blastoise:
object hidroBomba {
	const potencia = 120
	const tipo = agua
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

object triturar {
	const potencia = 80
	const tipo = siniestro
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

//Boss:
object psiquico {
	const potencia = 90
	const tipo = psiquico 
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { pokemon.defensa(self.diezPorcientoDe(pokemon)) } else { } }
	method diezPorcientoDe(pokemon) = ( pokemon.defensa() * 90 ) / 100
}

object concentrar {
	const potencia = 40
	const tipo = psiquico
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {
		if(0.randomUpTo(100) <= 30) { pokemon.ataque(pokemon.ataque() + self.diezPorcientoDe(pokemon)) } 
		else { }
	}
	method diezPorcientoDe(pokemon) = ( pokemon.defensa() * 90 ) / 100
}