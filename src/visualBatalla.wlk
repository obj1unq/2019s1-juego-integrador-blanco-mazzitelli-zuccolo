import pokemon.*
import wollok.game.*
import listaDePokemon.*
import ataques.*
import entrenador.*

class VisualBatalla {

	method dibujarVisualBatalla(pok1, pok2) {
		// Fondo
		game.ground("fondoBatalla.png")
		//game.sound("battle.mp3")
		game.addVisualIn(pelea, game.at(5, 1))
		// Agregados pelea
		game.addVisualIn(pok1, game.at(7, 5))
		game.addVisualIn(pok2, game.at(18, 10))
		movimientoPrincipal.imagen(ash.pokemon().listaDeMovimientos().head().image())
		movimientoSecundario.imagen(ash.pokemon().listaDeMovimientos().last().image())
		game.addVisualIn(movimientoPrincipal, game.at(8, 1))
		game.addVisualIn(movimientoSecundario, game.at(17, 1))
		
		keyboard.a().onPressDo {
			self.cantarVidaSiEstaVivo(pok1)
			self.atacaPokemonAsh(pok1, pok1.listaDeMovimientos().head())
			self.cantarVidaSiEstaVivo(pok2)
			self.contraatacarSiNoCai(pok2)
		}
		
		keyboard.s().onPressDo {
			self.cantarVidaSiEstaVivo(pok1)
			self.atacaPokemonAsh(pok1, pok1.listaDeMovimientos().last())
			self.cantarVidaSiEstaVivo(pok2)
			self.contraatacarSiNoCai(pok2)
		}
	}
	
	method atacaPokemonAsh(pokemon, ataque) {
		game.say(pokemon, "¡" + ataque.nombre() + "!")
		ash.ultimoPokemonColisionado().recibirAtaque(ataque, pokemon)
	}
	
	method contraatacarSiNoCai(pokemon) {
		var ataqueAUtilizar
		
		if(not pokemon.meQuedeSinVida()) { 
			ataqueAUtilizar = ash.ultimoPokemonColisionado().elegirMovimientoDeCombate()
			game.say(pokemon, "¡" + ataqueAUtilizar.nombre() + "!")
			ash.pokemon().recibirAtaque(ataqueAUtilizar, ash.ultimoPokemonColisionado())
		}
	}
	
	method cantarVidaSiEstaVivo(pokemon) {
		if(not pokemon.meQuedeSinVida()) {
			game.say(pokemon, "¡Estoy en " + pokemon.vidaActual() + " puntos de vida!")
		}
	}
	
	method revertirEstadisticas() {
		self.reveritirEstadistiacasDeAsh()
		self.revertirEstadisticasDeEnemigoSiVive()
	}
	
	method reveritirEstadistiacasDeAsh() {
		ash.pokemon().vidaActual(ash.pokemon().vida())
		ash.pokemon().ataqueActual(ash.pokemon().ataque())
		ash.pokemon().defensaActual(ash.pokemon().defensa())
	}
	
	method revertirEstadisticasDeEnemigoSiVive() {
		if(not ash.ultimoPokemonColisionado().meQuedeSinVida()) { self.revertirEstadisticasDeEnemigo() }
	}
	
	method revertirEstadisticasDeEnemigo() {
		ash.ultimoPokemonColisionado().vidaActual(ash.ultimoPokemonColisionado().vida())
		ash.ultimoPokemonColisionado().ataqueActual(ash.ultimoPokemonColisionado().ataque())
		ash.ultimoPokemonColisionado().defensaActual(ash.ultimoPokemonColisionado().defensa())
	}
}

const visualBatalla = new VisualBatalla()

//Para los ataques, hay que buscar la forma de que cuando tenemos a charmander las imagenes sean de los ataques de charmander, y asi con sus evoluciones.
//El problema principal es que no me esta dejando importar el program.wpgm, sino directamente le preguntamos el pokemon a ash1 y listo, pero no me dejo.
object movimientoPrincipal {

	var property imagen = ash.pokemon().listaDeMovimientos().head().image()

	method image() = imagen // Cambiar esta Imagen por la del nombre del ataque.

	method elegirImagen(pokemon) {
		imagen = pokemon.listaDeMovimientos().first().image()
	}
}

object movimientoSecundario {
	
	var property imagen = ash.pokemon().listaDeMovimientos().last().image()
	
	method image() = imagen
	
	method elegirImagen(pokemon) {
		imagen = pokemon.listaDeMovimientos().last().image()
	}
}

object pelea {

	method image() = "pelea.png"

}

object imagenFinal {
	method image() = "imagenFinal.jpg"	
}

object barraVerde {
	method image() = "barraVerde.png"
}

object barraAmarilla {
	method image() = "barraAmarilla.png"
}

object barraRoja {
	method image() = "barraRoja.png"
}

