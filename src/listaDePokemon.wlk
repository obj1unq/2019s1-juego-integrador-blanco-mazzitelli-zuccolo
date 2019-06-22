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




const charmander = new Charmander("charmander.png", fuego, 30, 30, 10, 15, 1, "charmander")
const bulbasaur = new Bulbasaur("bulbasaurRiv.png", planta, 50, 50, 5, 30, 1, "bulbasaur")
const squirtle = new Squirtle("squirtleRiv.png", agua, 40, 40, 17, 8, 1, "squirtle")

const charmeleon = new Charmeleon("charmeleon.png", fuego, 150, 150, 100, 130, 2, "charmeleon")
const ivysaur = new Ivysaur("ivysaurRiv.png", planta, 250, 250, 50, 180, 2, "ivysaur")
const wartortle = new Wartortle("wartortleRiv.png", agua, 200, 200, 80, 200, 2, "wartortle")

const charizard = new Charizard("charizard.png", fuego, 500, 500, 150, 250, 3, "charizard")
const venasaur = new Venasaur("venusaurRiv.png", planta, 650, 650, 100, 280, 3, "venasaur")
const blastoise = new Blastoise("blastoiseRiv.png", agua, 575, 575, 130, 320, 3, "blastoise")

const megaCharizard = new MegaCharizard("charizard.png", fuego, 1000, 1000, 300, 400, 4, "megaCharizard")
const mewtwo = new Mewtwo("mewtwo.png", psiquico, 10, 10, 0, 0, 4, "mewtwo")

/* Como charmander y todas sus evoluciones van a pertenecer al entrenador, su imagen cuando querramos cambiarl al entrar a la batalla siempre va a ser
 * la default, ahora como nuestro entrenador nunca va a tener ni a bulbasaur ni a squirtle (y ninguna evolucion), estos tienen la imagen Riv, para que apunten
 * hacia la camara en la visual de batalla. */