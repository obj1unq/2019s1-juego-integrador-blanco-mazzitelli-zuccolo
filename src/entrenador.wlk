import wollok.game.*
import estadosYTipo.*
import ataques.*
import visualBatalla.*
import mapa.*
//import combate.*
import listaDePokemon.*
import pokemon.*

object ash {
	
	var property pokemon = charmander
	const mochila = []
	var fase = 1
	
	var property lastPosition
	var property position = game.at(2,1)
	
	var property ultimoPokemonColisionado = charmander
	
	method image() = return "ash.png"
	method agregarAMochila(objeto) { mochila.add(objeto) }
	method objetosEnMochila() = mochila
	
	method move(nuevaPosicion) {
		lastPosition = position
		self.position(nuevaPosicion)
	}
	
	method stop(){
		self.position(lastPosition)
	}

	method discernirPokemon(nivel1, nivel2, nivel3) =
		if (self.pokemon().estadoEvolutivo() == 1) { nivel1 }
		else if (self.pokemon().estadoEvolutivo() == 2) { nivel2 }
		else { nivel3 }
		
	method hablarConElPublico() {
		if(fase >= 4) { game.say(self, "Vamos! Deja de tocar Z y anda a entrenar!") }
		else {
			self.recitarMensaje() 
			fase = fase + 1
		}
	}
	
	method recitarMensaje() { 
		self.cambiarTextoActual()
	} 
	
	method cambiarTextoActual() { 
		self.fase1()
		self.fase2()
		self.fase3()
	}

	method fase1() {
		if(fase == 1) { self.recitarTextoActual(
			"Hola! Soy Ash, sometí mi cuerpo a una insana cantidad de operaciones estéticas para parecer un buen entrenador!"
		) }
	}
	
	method fase2() {
		if(fase == 2) { self.recitarTextoActual(
			"En esta aventura vamos a intentar derrotar al malvado Plubio!"
		) }
	}
	
	method fase3() {
		if(fase == 3) { self.recitarTextoActual(
			"Pero primero debemos entrenar a nuestro Pokémon! ya que por ahora es un mierdas..."
		) }
	}
	
	method recitarTextoActual(texto) { game.say(self, texto) }
}