import wollok.game.*
import estadosYTipo.*
import ataques.*
import visualBatalla.*
import mapa.*
//import combate.*
import listaDePokemon.*
import entrenador.*

class Pokemon {

	const tipo 
	var property vida
	var property vidaActual
	var property ataque
	var property defensa
	var property estado = natural
	const estadoEvolutivo
	var property movimientos = []
	const nombre
	
	//IMAGENES
	var image = "pasto.png"
	var revertirImage = image
	const image2
	
	constructor(_image, _tipo, _vida, _vidaActual, _ataque, _defensa, _estadoEvolutivo, _nombre) {
      	image2 = _image
      	tipo = _tipo
      	vida = _vida
      	vidaActual = _vidaActual
      	ataque = _ataque
      	defensa = _defensa
      	estadoEvolutivo = _estadoEvolutivo
      	nombre = _nombre
 	}	
 	
 	//Getters
 	method cambiarImage(image_){image = image_}
 	method movimientos() {return movimientos}
	method tipo() = tipo
	method image() = image2
	method listaDeMovimientos() = movimientos
	method estadoEvolutivo() = estadoEvolutivo
	method nombre() = nombre
	
	method cambiarImagen() { image = image2 }
	method revertirImagen() { image = revertirImage }
	method aprenderMovimiento(movimiento) { movimientos.add(movimiento) }
	
	//Actions
	method elegirMovimientoDeCombate() = self.listaDeMovimientos().anyOne()
	
	method recibirAtaque(movimiento, pokemonAtacante) {
		self.calculoDeDanio(movimiento, pokemonAtacante)
		//self.aplicarEfectoSecundario(movimiento)
		if (self.vidaActual() <= 0) { self.finalizarBatalla(pokemonAtacante) }
	}
	
	method finalizarBatalla(pokemon) {
		game.clear()
		self.ashPerdioBatalla()
		ash.ultimoPokemonColisionado().revertirImagen()
		mapa.dibujarMapa()
		self.ashGanoBatalla(pokemon)
	}
	
	method ashPerdioBatalla() {
		if (ash.pokemon() == self) {
			ash.position(game.at(1, 11))
		}
	}
	
	method ashGanoBatalla(pokemon) {
		if (pokemon == ash.pokemon()) {
			game.removeVisual(self)
			pokemon.ganeBatalla()
		}
	}
	
	method ganeBatalla() {
		if (ash.pokemon().estadoEvolutivo() <= ash.ultimoPokemonColisionado().estadoEvolutivo()) { ash.pokemon(ash.discernirPokemon(charmeleon, charizard, megaCharizard)) }
	}
	
//	method aplicarEfectoSecundario(movimiento) {
//		movimiento.efectoSecundario(self)
//	}
	
	// Calculos de daño
	
	method calculoDeDanio(movimiento, pokemonAtacante) {
		vidaActual -= ( (self.danioTotal(movimiento, pokemonAtacante)) - self.defensa() )
	}
	
	method danioTotal(movimiento, pokemonAtacante) = 
		if(self.esDebil(movimiento)) { self.danioVerdadero(movimiento, pokemonAtacante) * 2 }
		else { self.danioVerdadero(movimiento, pokemonAtacante) }
		
	method danioVerdadero(movimiento, pokemonAtacante) = movimiento.potenciaDelAtaque() + pokemonAtacante.ataque()
	
	method esDebil(movimiento) = self.tipo().listaDeDebilidades().contains(movimiento.tipoDelAtaque())
	
	//Colision con Entrenador
	
	method colisionasteCon(entrenador) {
		self.cambioDeImagenes(entrenador)
		entrenador.ultimoPokemonColisionado(self)
		visualBatalla.dibujarVisualBatalla(entrenador.pokemon(), self)
	}
	
	method cambioDeImagenes(entrenador) {
		game.clear()
		self.cambiarImagenesAPokemon(entrenador)
	}
	
	method cambiarImagenesAPokemon(entrenador) {
		entrenador.pokemon().cambiarImagen()
		self.cambiarImagen()
	}
}