import pokemon.*
import wollok.game.*
import listaDePokemon.*
import entrenador.*
import visualBatalla.*

object mapa {
	
	method dibujarMapa() {
		
		game.ground("suelo.png")
		
		// Camino
		
		game.addVisualIn(camino, game.at(1,1))
		
		// Pastos Principiante - Medio - Avanzado
		
		(1..9).forEach { y =>	(5..10).forEach { x => game.addVisualIn(pasto, game.at(x,y)) }	}
		
		(0..3).forEach { y =>	(12..30).forEach { x => game.addVisualIn(pasto, game.at(x,y)) }	}
		
		(11..15).forEach { y =>	(16..25).forEach { x => game.addVisualIn(pasto, game.at(x,y)) }	}

		// Fences Primer Zona
		const fence1 = new Fence()	
		
		game.addVisualIn(fence1, game.at(5,10))	
		game.addVisualIn(fence1, game.at(6,10))
		game.addVisualIn(fence1, game.at(7,10))
		game.addVisualIn(fence1, game.at(8,10))
		game.addVisualIn(fence1, game.at(9,10))
		game.addVisualIn(fence1, game.at(10,10))
		
		game.addVisualIn(fence1, game.at(5,0))
		game.addVisualIn(fence1, game.at(6,0))
		game.addVisualIn(fence1, game.at(7,0))
		game.addVisualIn(fence1, game.at(8,0))
		game.addVisualIn(fence1, game.at(9,0))
		game.addVisualIn(fence1, game.at(10,0))
		
		game.addVisualIn(fence1, game.at(11,5))
		game.addVisualIn(fence1, game.at(11,10))
		game.addVisualIn(fence1, game.at(11,9))
		
		// Fences Segunda Zona
		
		game.addVisualIn(fence1, game.at(12,4))	
		game.addVisualIn(fence1, game.at(13,4))
		game.addVisualIn(fence1, game.at(14,4))
		game.addVisualIn(fence1, game.at(15,4))
		game.addVisualIn(fence1, game.at(16,4))
		game.addVisualIn(fence1, game.at(17,4))
		game.addVisualIn(fence1, game.at(18,4))
		game.addVisualIn(fence1, game.at(19,4))
		game.addVisualIn(fence1, game.at(22,4))
		game.addVisualIn(fence1, game.at(23,4))
		game.addVisualIn(fence1, game.at(24,4))
		game.addVisualIn(fence1, game.at(25,4))
		game.addVisualIn(fence1, game.at(26,4))
		game.addVisualIn(fence1, game.at(27,4))
		game.addVisualIn(fence1, game.at(28,4))
		game.addVisualIn(fence1, game.at(29,4))
		game.addVisualIn(fence1, game.at(30,4))
		
		game.addVisualIn(fence1, game.at(11,4))
		game.addVisualIn(fence1, game.at(11,3))
		game.addVisualIn(fence1, game.at(11,2))
		game.addVisualIn(fence1, game.at(11,1))
		game.addVisualIn(fence1, game.at(11,0))
		
		// Fences Tercer Zona
		game.addVisualIn(fence1, game.at(16,10))
		game.addVisualIn(fence1, game.at(17,10))
		game.addVisualIn(fence1, game.at(18,10))
		game.addVisualIn(fence1, game.at(19,10))
		game.addVisualIn(fence1, game.at(22,10))
		game.addVisualIn(fence1, game.at(23,10))
		game.addVisualIn(fence1, game.at(24,10))
		game.addVisualIn(fence1, game.at(25,10))
		
		game.addVisualIn(fence1, game.at(15,10))
		game.addVisualIn(fence1, game.at(15,11))
		game.addVisualIn(fence1, game.at(15,12))
		game.addVisualIn(fence1, game.at(15,13))
		game.addVisualIn(fence1, game.at(15,14))
		game.addVisualIn(fence1, game.at(15,15))
		
		game.addVisualIn(fence1, game.at(26,10))
		game.addVisualIn(fence1, game.at(26,11))
		game.addVisualIn(fence1, game.at(26,12))
		game.addVisualIn(fence1, game.at(26,13))
		game.addVisualIn(fence1, game.at(26,14))
		game.addVisualIn(fence1, game.at(26,15))
		
		game.addVisualIn(fence1, game.at(30,10))
		game.addVisualIn(fence1, game.at(30,11))
		game.addVisualIn(fence1, game.at(30,12))
		game.addVisualIn(fence1, game.at(30,13))
		game.addVisualIn(fence1, game.at(30,14))
		game.addVisualIn(fence1, game.at(30,15))

		
		// Batalla Final
		
		game.addVisualIn(batallaFinal, game.at(27,13))
		
		//Objetos del camino: Hospital, Snorlax, Arbustos, Guardia
		
		game.addVisualIn(hospital, game.at(1,11))
		game.addVisualIn(snorlax, game.at(20,10))
		game.addVisualIn(arbustoCorte, game.at(20,4))
		game.addVisualIn(arbustoCorte, game.at(21,4))
		//game.addVisualIn(guardia, game.at(27,11))
		game.addVisualIn(guardia, game.at(28,11))
		game.addVisualIn(guardia, game.at(29,11))
		
		// Pokemon 
		
		game.addVisualIn(bulbasaur, game.at(5.randomUpTo(10).truncate(0), 1.randomUpTo(9).truncate(0)))	
		game.addVisualIn(squirtle, game.at(5.randomUpTo(10).truncate(0), 1.randomUpTo(9).truncate(0)))
		game.addVisualIn(ivysaur, game.at(12.randomUpTo(29).truncate(0), 1.randomUpTo(3).truncate(0)))
		game.addVisualIn(wartortle, game.at(12.randomUpTo(29).truncate(0), 1.randomUpTo(3).truncate(0)))
		game.addVisualIn(venasaur, game.at(16.randomUpTo(25).truncate(0), 11.randomUpTo(14).truncate(0)))
		game.addVisualIn(blastoise, game.at(16.randomUpTo(25).truncate(0), 11.randomUpTo(14).truncate(0)))
		mewtwo.cambiarImage("sueloArena.png")
		game.addVisualIn(mewtwo, game.at(28,13))
		
		game.addVisual(ash)
		
		//No se puede usar metodo addVisualCharacter porque sino no hay manera de recordar la lastPosition.
		keyboard.up().onPressDo { ash.move(ash.position().up(1)) }
		keyboard.down().onPressDo { ash.move(ash.position().down(1)) }
		keyboard.left().onPressDo { ash.move(ash.position().left(1)) }
		keyboard.right().onPressDo { ash.move(ash.position().right(1)) }
		
		keyboard.q().onPressDo { game.say(ash, "¡" + ash.pokemon().nombre() + " yo te elijo!!. " + "Estas a: " + ash.pokemon().vidaActual()) }
		keyboard.z().onPressDo { ash.hablarConElPublico() }
		
		//Colisiones
		game.whenCollideDo ( ash, { entidad => entidad.colisionasteCon(ash) } )
	}
}

//Objetos y Clases Visuales del Mapa -> Polimorficos a la colision con Entrenador.
class Fence {
	method image() = "fence.png"
	
	method colisionasteCon(entrenador) {
		entrenador.stop()
	}
}

object hospital {
	
	method image() = "centroPokemon.png"
	
	method colisionasteCon(entrenador) {
		entrenador.pokemon().vidaActual(entrenador.pokemon().vida() + 150)
		game.say(self, "Curamos a tu Pokemon para que continue su aventura, tene mas cuidado a la hora de pelear!!")
	}
}

object pasto {
	method image() = "pasto.png"
	
	method colisionasteCon(entrenador) {	}
}

object camino {
	method image() = "camino.png"
	
	method colisionasteCon(entrenador) {	}
}

class BatallaFinal inherits VisualBatalla {
	
	method image() = "peleaFinal.png"
	
	method colisionasteCon(entrenador) { }
}

const batallaFinal = new BatallaFinal()

object corte {
	method image() = "poke.png"
	
	method colisionasteCon(entrenador) {
		game.removeVisual(self)
		entrenador.agregarAMochila(self)
		game.say(entrenador, "Conseguí la Maquina Oculta Corte!")
	}
}

object flauta {
	method image() = "poke.png"
	
	method colisionasteCon(entrenador) {
		game.removeVisual(self)
		entrenador.agregarAMochila(self)
		game.say(entrenador, "Conseguí la Flauta Blanca! Quizás ahora pueda despertar a ese Snorlax!")
	}
}

object snorlax {
	method image() = "snorlax.png"
	
	method colisionasteCon(entrenador) {
		if(self.tieneFlauta(entrenador)) { self.despertar(entrenador) }
		else { self.noDejarPasar(entrenador) }
	}
	
	method tieneFlauta(entrenador) = entrenador.objetosEnMochila().contains(flauta)
	
	method despertar(entrenador) {
		game.removeVisual(self)
		game.say(entrenador, "Es increible lo rapido que corre para estar tan gordo... y yo que quería atraparlo.")
	}
	
	method noDejarPasar(entrenador) {
		game.say(entrenador, "Tengo que encontrar una forma de despertarlo... Tal vez algún item me ayude.")
		entrenador.move(entrenador.position().down(1))
	}
}

object arbustoCorte {
	method image() = "arbusto.png"
	
	method colisionasteCon(entrenador) {
		if(self.tieneCorte(entrenador)) { self.cortarArbusto(entrenador) }
		else { self.noDejarPasar(entrenador) }
	}
	
	method tieneCorte(entrenador) = entrenador.objetosEnMochila().contains(corte)
	
	method cortarArbusto(entrenador) {
		game.removeVisual(self)
		game.say(entrenador, "Ya esta! los corte, ahora puedo seguir!")
	}
	
	method noDejarPasar(entrenador) {
		game.say(entrenador, "Mmm necesito cortar estos arbustos... Quizás algún movimiento me ayude.")
		entrenador.move(entrenador.position().up(1))
	}
}

object guardia {
	method image() = "guardia.png"
	
	method colisionasteCon(entrenador) {
		if(self.esFuerte(entrenador)) { self.dejarPasar(entrenador) }
		else { self.noDejarPasar(entrenador) }
	}
	
	method esFuerte(entrenador) = entrenador.pokemon().estadoEvolutivo() == 4
	
	method dejarPasar(entrenador) {
		game.say(entrenador, "Muy bien, es hora del combate final.")
		game.removeVisual(self)
	}
	
	method noDejarPasar(entrenador) {
		game.say(self, "Deberías volverte más fuerte para intentar este combate.")
		entrenador.move(entrenador.position().down(1))
	}
}