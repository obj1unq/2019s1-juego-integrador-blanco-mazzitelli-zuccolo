import pokemon.*
import ataques.*
import estadosYTipo.*
import entrenador.*
import wollok.game.*
import mapa.*

class Charmander inherits Pokemon {
	
}

class Charmeleon inherits Pokemon {
	
}

class Charizard inherits Pokemon {
	
}

class Bulbasaur inherits Pokemon {
	override method ashGanoBatalla(pokemon) {
		if (pokemon == ash.pokemon()) {
			game.removeVisual(self)
			pokemon.ganeBatalla()
		}
		self.accionTrasPerder()
	}
	
	method accionTrasPerder() {
		game.addVisualIn(corte, game.at(13,8))
		game.say(ash, "Cayo un objeto mientras combatiamos!")
	}
}

class Ivysaur inherits Pokemon {
	override method ashGanoBatalla(pokemon) {
		if (pokemon == ash.pokemon()) {
			game.removeVisual(self)
			pokemon.ganeBatalla()
		}
		self.accionTrasPerder()
	}
	
	method accionTrasPerder() {
		game.addVisualIn(flauta, game.at(19,7))
		game.say(ash, "Otro objeto!")
	}
}

class Venasaur inherits Pokemon {
	
}

class Squirtle inherits Pokemon {
	override method ashGanoBatalla(pokemon) {
		if (pokemon == ash.pokemon()) {
			game.removeVisual(self)
			pokemon.ganeBatalla()
		}
		self.accionTrasPerder()
	}
	
	method accionTrasPerder() {
		game.addVisualIn(corte, game.at(13,8))
		game.say(ash, "Cayo un objeto mientras combatiamos!")
	}
}

class Wartortle inherits Pokemon {
	override method ashGanoBatalla(pokemon) {
		if (pokemon == ash.pokemon()) {
			game.removeVisual(self)
			pokemon.ganeBatalla()
		}
		self.accionTrasPerder()
	}
	
	method accionTrasPerder() {
		game.addVisualIn(flauta, game.at(19,7))
		game.say(ash, "Otro objeto!")
	}
}

class Blastoise inherits Pokemon {
	
}

class Mewtwo inherits Pokemon {	
	override method ashGanoBatalla(pokemon) {
		if (pokemon == ash.pokemon()) {
			game.removeVisual(self)
			ash.esCampeon()
		}
	}
}

class MegaCharizard inherits Pokemon {
	
}




const charmander = new Charmander("charmander.png", fuego, 40, 40, 30, 20, 1, "charmander")
const bulbasaur = new Bulbasaur("bulbasaurRiv.png", planta, 60, 60, 20, 25, 1, "bulbasaur")
const squirtle = new Squirtle("squirtleRiv.png", agua, 45, 45, 25, 30, 1, "squirtle")

const charmeleon = new Charmeleon("charmeleon.png", fuego, 100, 100, 120, 100, 2, "charmeleon")
const ivysaur = new Ivysaur("ivysaurRiv.png", planta, 150, 150, 100, 110, 2, "ivysaur")
const wartortle = new Wartortle("wartortleRiv.png", agua, 130, 130, 90, 120, 2, "wartortle")

const charizard = new Charizard("charizard.png", fuego, 300, 300, 150, 120, 3, "charizard")
const venasaur = new Venasaur("venusaurRiv.png", planta, 500, 500, 130, 170, 3, "venasaur")
const blastoise = new Blastoise("blastoiseRiv.png", agua, 200, 200, 100, 150, 3, "blastoise")

const megaCharizard = new MegaCharizard("charizard.png", fuego, 500, 500, 200, 150, 4, "megaCharizard")
const mewtwo = new Mewtwo("mewtwo.png", psiquico, 500, 500, 200, 150, 4, "mewtwo")

/* Como charmander y todas sus evoluciones van a pertenecer al entrenador, su imagen cuando querramos cambiarl al entrar a la batalla siempre va a ser
 * la default, ahora como nuestro entrenador nunca va a tener ni a bulbasaur ni a squirtle (y ninguna evolucion), estos tienen la imagen Riv, para que apunten
 * hacia la camara en la visual de batalla. */