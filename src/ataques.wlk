import pokemon.*
import estadosYTipo.*
import wollok.game.*

//Ataques de la linea de Charmander.
//Charmander:
object ascuas {
	const potencia = 20
	const tipo = fuego
	const imagen = "ascuas.png"
	var property nombre = "Ascuas"
	
	method image() = imagen
	
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
	const potencia = 20
	const tipo = normal
	const imagen = "araniazo.png"
	var property nombre = "Arañazo"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

//Charmeleon:
object pirotecnia {
	const potencia = 60
	const tipo = fuego
	const imagen = "pirotecnia.png"
	var property nombre = "Pirotecnia"
	
	method image() = imagen
	
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
	const imagen = "cuchillada.png"
	var property nombre = "Cuchillada"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { potencia = potencia*2 } else { } }
}

//Charizard: 
object lanzallamas {
	const potencia = 110
	const tipo = fuego
	const imagen = "lanzallamas.png"
	var property nombre = "Lanzallamas"
	
	method image() = imagen
	
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
	var potencia = 80
	const tipo = volador
	const imagen = "tajoAereo.png"
	var property nombre = "Tajo Aéreo"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { potencia = potencia*2 } else { } }
}

//Ataques de la linea de Bulbasaur.
//Bulbasaur:
object latigoCepa {
	const potencia = 20
	const tipo = planta
	const imagen = "latigoCepa.png"
	var property nombre = "Latigo Cepa"
	
	method image() = imagen
	
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

object placaje {
	const potencia = 20
	const tipo = normal
	const imagen = "placaje.png"
	var property nombre = "Placaje"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

//Ivysaur:
object hojaAfilada {
	var potencia = 70
	const tipo = planta
	const imagen = "hojaAfilada.png"
	var property nombre = "Hoja Afilada"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { potencia = potencia*2 } else { } }
}

object cargaToxica {
	const potencia = 65
	const tipo = veneno
	const imagen = "cargaToxica.png"
	var property nombre = "Carga Tóxica"
	
	method image() = imagen
	
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
	const imagen = "rayoSolar.png"
	var property nombre = "Rayo Solar"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

object bombaLodo {
	const potencia = 90
	const tipo = veneno
	const imagen = "bombaLodo.png"
	var property nombre = "Bomba Lodo"
	
	method image() = imagen
	
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
	const potencia = 20
	const tipo = agua
	const imagen = "pistolaAgua.png"
	var property nombre = "Pistola Agua"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

//Wartortle:
object rayoBurbuja {
	const potencia = 60
	const tipo = agua
	const imagen = "rayoBurbuja.png"
	var property nombre = "Rayoburbuja"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { pokemon.velocidad(self.diezPorcientoDe(pokemon)) } else { } }
	method diezPorcientoDe(pokemon) = ( pokemon.velocidad() * 90 ) / 100
}

object mordisco {
	const potencia = 60
	const tipo = siniestro
	const imagen = "mordisco.png"
	var property nombre = "Mordisco"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

//Blastoise:
object hidroBomba {
	const potencia = 120
	const tipo = agua
	const imagen = "hidroBomba.png"
	var property nombre = "Hidrobomba"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

object triturar {
	const potencia = 100
	const tipo = siniestro
	const imagen = "triturar.png"
	var property nombre = "Triturar"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {  }
}

//Boss:
object ondaPsiquica {
	const potencia = 100
	const tipo = psiquico 
	const imagen = "psiquico.png"
	var property nombre = "Psíquico"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { pokemon.defensa(self.diezPorcientoDe(pokemon)) } else { } }
	method diezPorcientoDe(pokemon) = ( pokemon.defensa() * 90 ) / 100
}

object concentrar {
	const potencia = 40
	const tipo = psiquico
	const imagen = "concentrar.png"
	var property nombre = "Concentrar"
	
	method image() = imagen
	
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) {
		if(0.randomUpTo(100) <= 30) { pokemon.ataque(pokemon.ataque() + self.diezPorcientoDe(pokemon)) } 
		else { }
	}
	method diezPorcientoDe(pokemon) = ( pokemon.defensa() * 90 ) / 100
}