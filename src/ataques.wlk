import pokemon.*
import estadosYTipo.*
import wollok.game.*
import entrenador.*


class Movimiento {
	const potencia
	const tipo
	const imagen
	var property nombre
	
	constructor(_potencia, _tipo, _imagen, _nombre) {
		potencia = _potencia
		tipo = _tipo
		imagen = _imagen
		nombre = _nombre
	}
	
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

const ascuas = new Ascuas(20, fuego, "ascuas.png", "Ascuas")
const araniazo = new Araniazo(15, normal, "araniazo.png", "Arañazo")
const pirotecnia = new Pirotecnia(60, fuego, "pirotecnia.png", "Pirotecnia")
const cuchillada = new Cuchillada(70, normal, "cuchillada.png", "Cuchillada")
const lanzallamas = new Lanzallamas(90, fuego, "lanzallamas.png", "Lanzallamas")
const lanzallamas2 = new Lanzallamas(150, fuego, "lanzallamas.png", "Lanzallamas")
const tajoAereo = new TajoAereo(100, volador, "tajoAereo.png", "Tajo Aéreo")

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

const latigoCepa = new LatigoCepa(15, planta, "latigoCepa.png", "Latigo Cepa")
const placaje = new Placaje(20, normal, "placaje.png", "Placaje")
const hojaAfilada = new HojaAfilada(45, planta, "hojaAfilada.png", "Hoja Afilada")
const cargaToxica = new CargaToxica(40, veneno, "cargaToxica.png", "Carga Tóxica")
const rayoSolar = new RayoSolar(120, planta, "rayoSolar.png", "Rayo Solar")
const bombaLodo = new BombaLodo(150, veneno, "bombaLodo.png", "Bomba Lodo")

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

const pistolaAgua = new PistolaAgua(20, agua, "pistolaAgua.png", "Pistola Agua")
const rayoBurbuja = new RayoBurbuja(60, agua, "rayoBurbuja.png", "Rayo Burbuja")
const mordisco = new Mordisco(40, siniestro, "mordisco.png", "Mordisco")
const hidroBomba = new HidroBomba(80, agua, "hidroBomba.png", "Hidrobomba")
const triturar = new Triturar(70, siniestro, "triturar.png", "Triturar")

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

const ondaPsiquica = new OndaPsiquica(150, psiquico, "psiquico.png", "Psíquico")
const concentrar = new Concentrar(100, psiquico, "concentrar.png", "Concentrar")