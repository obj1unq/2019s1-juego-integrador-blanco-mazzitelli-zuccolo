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
	
	method efectoSecundario(pokemonAtacado, pokemonAtacante) 
	
	method calcularDanio(pokemonAtacante, pokemonAtacado) =
		self.danioTotal(pokemonAtacante, pokemonAtacado) - pokemonAtacado.defensaActual()
	
	method danioTotal(pokemonAtacante, pokemonAtacado) = 
		if(self.esDebil(pokemonAtacado)) { self.danioVerdadero(pokemonAtacante) * 2 }
		else { self.danioVerdadero(pokemonAtacante) }
		
	method danioVerdadero(pokemonAtacante) = self.potenciaDelAtaque() + pokemonAtacante.ataqueActual()
	
	method esDebil(pokemonAtacado) = pokemonAtacado.tipo().listaDeDebilidades().contains(self.tipoDelAtaque())
}

//Ataques de la linea de Charmander.
//Charmander:
class Ascuas inherits Movimiento{
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { }
} 

class Latigo inherits Movimiento {	
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { 
		pokemonAtacado.defensaActual((pokemonAtacado.defensaActual() / 1.5).truncate(0))
		game.say(pokemonAtacado, "Me bajo la defensa de " + pokemonAtacado.defensa() + " a " + pokemonAtacado.defensaActual())
	}
	
	override method calcularDanio(pokemonAtacante, pokemonAtacado) = 0
}

//Charmeleon:
class Pirotecnia inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { }
}

class Cuchillada inherits Movimiento{
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { }
}

//Charizard: 
class Lanzallamas inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { }
}

class DanzaDragon inherits Movimiento{
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { 
		pokemonAtacante.ataqueActual((pokemonAtacante.ataqueActual() * 1.5).truncate(0))
		game.say(pokemonAtacante, "¡Mi ataque subió de " + pokemonAtacante.ataque() + " a " + pokemonAtacante.ataqueActual())
	}
	
	override method calcularDanio(pokemonAtacante, pokemonAtacado) = 0
}

const ascuas = new Ascuas(20, fuego, "ascuas.png", "Ascuas")
const latigo = new Latigo(0, normal, "látigo.png", "Látigo")
const pirotecnia = new Pirotecnia(60, fuego, "pirotecnia.png", "Pirotecnia")
const cuchillada = new Cuchillada(70, normal, "cuchillada.png", "Cuchillada")
const lanzallamas = new Lanzallamas(90, fuego, "lanzallamas.png", "Lanzallamas")
const lanzallamas2 = new Lanzallamas(150, fuego, "lanzallamas.png", "Lanzallamas")
const danzaDragon = new DanzaDragon(0, dragon, "danzaDragon.png", "Danza dragón")

//Ataques de la linea de Bulbasaur.
//Bulbasaur:
class LatigoCepa inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) {  }
}

class Grunido inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { 
		pokemonAtacado.ataqueActual((pokemonAtacado.ataqueActual() / 1.5).truncate(0))
		game.say(pokemonAtacado, "Me bajo el ataque de " + pokemonAtacado.ataque() + " a " + pokemonAtacado.ataqueActual())
	}
	
	override method calcularDanio(pokemonAtacante, pokemonAtacado) = 0
}

//Ivysaur:
class HojaAfilada inherits Movimiento{
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { }
}

class CargaToxica inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { }
}

//Venusaur:
class RayoSolar inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) {  }
}

class Desarrollo inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { 
		pokemonAtacante.ataqueActual((pokemonAtacante.ataqueActual() * 1.5).truncate(0))
		game.say(pokemonAtacante, "¡Mi ataque subió de " + pokemonAtacante.ataque() + " a " + pokemonAtacante.ataqueActual())
	}
	
	override method calcularDanio(pokemonAtacante, pokemonAtacado) = 0
}

const latigoCepa = new LatigoCepa(15, planta, "latigoCepa.png", "Latigo Cepa")
const grunido = new Grunido(0, normal, "gruñido.png", "Gruñido")
const hojaAfilada = new HojaAfilada(45, planta, "hojaAfilada.png", "Hoja Afilada")
const cargaToxica = new CargaToxica(40, veneno, "cargaToxica.png", "Carga Tóxica")
const rayoSolar = new RayoSolar(120, planta, "rayoSolar.png", "Rayo Solar")
const desarrollo = new Desarrollo(0, planta, "desarrollo.png", "Desarrollo")

//Ataques de la linea de Squirtle-
//Squirtle: (+ gruñido)
class PistolaAgua inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) {  }
}

//Wartortle:
class RayoBurbuja inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { }
}

class Mordisco inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) {  }
}

//Blastoise:
class HidroBomba inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) {  }
}

class Refugio inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { 
		pokemonAtacante.defensaActual((pokemonAtacante.defensaActual() * 1.2).truncate(0))
		game.say(pokemonAtacante, "¡Mi defensa subió de " + pokemonAtacante.defensa() + " a " + pokemonAtacante.defensaActual())
	}
	
	override method calcularDanio(pokemonAtacante, pokemonAtacado) = 0
}

const pistolaAgua = new PistolaAgua(20, agua, "pistolaAgua.png", "Pistola Agua")
const rayoBurbuja = new RayoBurbuja(60, agua, "rayoBurbuja.png", "Rayo Burbuja")
const mordisco = new Mordisco(40, siniestro, "mordisco.png", "Mordisco")
const hidroBomba = new HidroBomba(80, agua, "hidroBomba.png", "Hidrobomba")
const refugio = new Refugio(0, normal, "refugio.png", "Refugio")

//Boss:
class OndaPsiquica inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { }
}

class PazMental inherits Movimiento {
	override method efectoSecundario(pokemonAtacado, pokemonAtacante) { 
		pokemonAtacante.ataqueActual((pokemonAtacante.ataqueActual() * 2).truncate(0))
		game.say(pokemonAtacante, "¡Mi ataque subió de " + pokemonAtacante.ataque() + " a " + pokemonAtacante.ataqueActual())
	}
	
	override method calcularDanio(pokemonAtacante, pokemonAtacado) = 0
}

const ondaPsiquica = new OndaPsiquica(150, psiquico, "psiquico.png", "Psíquico")
const pazMental = new PazMental(0, psiquico, "pazMental.png", "Paz Mental")