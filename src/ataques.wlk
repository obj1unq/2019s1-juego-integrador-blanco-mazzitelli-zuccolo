import pokemon.*
import estadosYTipo.*
import wollok.game.*


class Movimiento {
	const potencia
	const tipo
	const imagen
	var property nombre
	
	method image() = imagen
	method potenciaDelAtaque() = potencia
	method tipoDelAtaque() = tipo
	
	method efectoSecundario(pokemon) 
}

//Ataques de la linea de Charmander.
//Charmander:
class Ascuas inherits Movimiento{
	override method efectoSecundario(pokemon) {
		if(pokemon.estado() == natural) { self.intentarQuemar(pokemon) }
		else { game.say(self, "¡El estado de" + pokemon + "ya esta alterado!") }
	}
	
	method intentarQuemar(pokemon) {
		if(0.randomUpTo(100).truncate(0) <= 40) { pokemon.estado(quemado) }
		else { }
	}
} 

class Araniazo inherits Movimiento {	
	override method efectoSecundario(pokemon) {  }
}

//Charmeleon:
class Pirotecnia inherits Movimiento {
	override method efectoSecundario(pokemon) {
		if(pokemon.estado() == natural) { self.intentarQuemar(pokemon) }
		else { game.say(self, "¡El estado de" + pokemon + "ya esta alterado!") }
	}
	
	method intentarQuemar(pokemon) {
		if(0.randomUpTo(100).truncate(0) <= 40) { pokemon.estado(quemado) }
		else { }
	}
}

class Cuchillada inherits Movimiento{
	override method efectoSecundario(pokemon) { }
}

//Charizard: 
class Lanzallamas inherits Movimiento {
	override method efectoSecundario(pokemon) {
		if(pokemon.estado() == natural) { self.intentarQuemar(pokemon) }
		else { game.say(self, "¡El estado de" + pokemon + "ya esta alterado!") }
	}
	
	method intentarQuemar(pokemon) {
		if(0.randomUpTo(100).truncate(0) <= 40) { pokemon.estado(quemado) }
		else { }
	}
}

class TajoAereo inherits Movimiento{
	override method efectoSecundario(pokemon) { }
}

const ascuas = new Ascuas(potencia = 20, tipo = fuego, imagen = "ascuas.png", nombre = "Ascuas")
const araniazo = new Araniazo(potencia = 20, tipo = normal, imagen = "araniazo.png", nombre = "Arañazo")
const pirotecnia = new Pirotecnia(potencia = 60, tipo = fuego, imagen = "pirotecnia.png", nombre = "Pirotecnia")
const cuchillada = new Cuchillada(potencia = 70, tipo = normal, imagen = "cuchillada.png", nombre = "Cuchillada")
const lanzallamas = new Lanzallamas(potencia = 110, tipo = fuego, imagen = "lanzallamas.png", nombre = "Lanzallamas")
const tajoAereo = new TajoAereo(potencia = 80, tipo = volador, imagen = "tajoAereo.png", nombre = "Tajo Aéreo")

//Ataques de la linea de Bulbasaur.
//Bulbasaur:
class LatigoCepa inherits Movimiento {
	override method efectoSecundario(pokemon) {  }
}

class Placaje inherits Movimiento {
	override method efectoSecundario(pokemon) {  }
}

//Ivysaur:
class HojaAfilada inherits Movimiento{
	override method efectoSecundario(pokemon) { }
}

class CargaToxica inherits Movimiento {
	override method efectoSecundario(pokemon) {
		if(pokemon.estado() == natural) { self.intentarEnvenenar(pokemon) }
		else { game.say(self, "¡El estado de" + pokemon + "ya esta alterado!") }
	}
	
	method intentarEnvenenar(pokemon) {
		if(0.randomUpTo(100).truncate(0) <= 40) { pokemon.estado(envenenado) }
		else { }
	}
}

//Venusaur:
class RayoSolar inherits Movimiento {
	override method efectoSecundario(pokemon) {  }
}

class BombaLodo inherits Movimiento {
	override method efectoSecundario(pokemon) {
		if(pokemon.estado() == natural) { self.intentarEnvenenar(pokemon) }
		else { game.say(self, "¡El estado de" + pokemon + "ya esta alterado!") }
	}
	
	method intentarEnvenenar(pokemon) {
		if(0.randomUpTo(100).truncate(0) <= 40) { pokemon.estado(envenenado) }
		else { }
	}
}

const latigoCepa = new LatigoCepa(potencia = 20, tipo = planta, imagen = "latigoCepa.png", nombre = "Latigo Cepa")
const placaje = new Placaje(potencia = 20, tipo = normal, imagen = "placaje.png", nombre = "Placaje")
const hojaAfilada = new HojaAfilada(potencia = 70, tipo = planta, imagen = "hojaAfilada.png", nombre = "Hoja Afilada")
const cargaToxica = new CargaToxica(potencia = 65, tipo = veneno, imagen = "cargaToxica.png", nombre = "Carga Tóxica")
const rayoSolar = new RayoSolar(potencia = 120, tipo = planta, imagen = "rayoSolar.png", nombre = "Rayo Solar")
const bombaLodo = new BombaLodo(potencia = 95, tipo = veneno, imagen = "bombaLodo.png", nombre = "Bomba Lodo")

//Ataques de la linea de Squirtle-
//Squirtle: (+ placaje)
class PistolaAgua inherits Movimiento {
	override method efectoSecundario(pokemon) {  }
}

//Wartortle:
class RayoBurbuja inherits Movimiento {
	override method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { pokemon.velocidad(self.diezPorcientoDe(pokemon)) } else { } }
	method diezPorcientoDe(pokemon) = ( pokemon.velocidad() * 90 ) / 100
}

class Mordisco inherits Movimiento {
	override method efectoSecundario(pokemon) {  }
}

//Blastoise:
class HidroBomba inherits Movimiento {
	override method efectoSecundario(pokemon) {  }
}

class Triturar inherits Movimiento {
	override method efectoSecundario(pokemon) {  }
}

const pistolaAgua = new PistolaAgua(potencia = 20, tipo = agua, imagen = "pistolaAgua.png", nombre = "Pistola Agua")
const rayoBurbuja = new RayoBurbuja(potencia = 60, tipo = agua, imagen = "rayoBurbuja.png", nombre = "Rayo Burbuja")
const mordisco = new Mordisco(potencia = 60, tipo = siniestro, imagen = "mordisco.png", nombre = "Mordisco")
const hidroBomba = new HidroBomba(potencia = 120, tipo = agua, imagen = "hidroBomba.png", nombre = "Hidrobomba")
const triturar = new Triturar(potencia = 100, tipo = siniestro, imagen = "triturar.png", nombre = "Triturar")

//Boss:
class OndaPsiquica inherits Movimiento {
	override method efectoSecundario(pokemon) { if(0.randomUpTo(100) <= 30) { pokemon.defensa(self.diezPorcientoDe(pokemon)) } else { } }
	method diezPorcientoDe(pokemon) = ( pokemon.defensa() * 90 ) / 100
}

class Concentrar inherits Movimiento {
	override method efectoSecundario(pokemon) {
		if(0.randomUpTo(100) <= 30) { pokemon.ataque(pokemon.ataque() + self.diezPorcientoDe(pokemon)) } 
		else { }
	}
	method diezPorcientoDe(pokemon) = ( pokemon.defensa() * 90 ) / 100
}

const ondaPsiquica = new OndaPsiquica(potencia = 100, tipo = psiquico, imagen = "psiquico.png", nombre = "Psíquico")
const concentrar = new Concentrar(potencia = 40, tipo = psiquico, imagen = "concentrar.png", nombre = "Concentrar")