import wollok.game.*
import estadosYTipo.*
import ataques.*
import visualBatalla.*
import mapa.*
//import combate.*
import listaDePokemon.*

class Pokemon {

	const tipo 
	var property vida
	var property vidaActual
	var property ataque
	var property defensa
	var property estado = natural
	const estadoEvolutivo
	var property movimientos = []
	
	//IMAGENES
	var image = "pasto.png"
	var revertirImage = image
	const image2
	
	constructor(_image, _tipo, _vida, _vidaActual, _ataque, _defensa, _estadoEvolutivo) {
      	image2 = _image
      	tipo = _tipo
      	vida = _vida
      	vidaActual = _vidaActual
      	ataque = _ataque
      	defensa = _defensa
      	estadoEvolutivo = _estadoEvolutivo
      	
      	
 	}	
 	method cambiarImage(image_){image = image_}
 	method movimientos() {return movimientos}
	method tipo() = tipo
	method image() = image2
	method listaDeMovimientos() = movimientos
	method estadoEvolutivo() = estadoEvolutivo
	
	method cambiarImagen() { image = image2 }
	method revertirImagen() { image = revertirImage }
	method aprenderMovimiento(movimiento) { movimientos.add(movimiento) }
	
	//Actions
	method elegirMovimientoDeCombate() = self.listaDeMovimientos().anyOne()
	
	method recibirAtaque(movimiento, pokemonAtacante) {
		self.calculoDeDanio(movimiento, pokemonAtacante)
	//	self.aplicarEfectoSecundario(movimiento)
		if (self.vidaActual() <= 0) { self.finalizarBatalla(pokemonAtacante) }
	}
	
	method finalizarBatalla(pokemon) {
		game.clear()
		if (ash.pokemon() == self) {
			ash.position(game.at(3, 12))
		}
		ash.ultimoPokemonColisionado().revertirImagen()
		mapa.dibujarMapa()
		if (pokemon == ash.pokemon()) {
			game.removeVisual(self)
			pokemon.ganeBatalla()
		}	
	}
	
	method ganeBatalla() {
		ash.pokemon(ash.discernirPokemon(charmeleon, charizard, megaCharizard))
	}
	
	method aplicarEfectoSecundario(movimiento) {
		movimiento.efectoSecundario(self)
	}
	
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
		visualBatalla.dibujarVisualBatalla(entrenador.pokemon(), self)
	}
	
	method cambiarImagenesAPokemon(entrenador) {
		entrenador.pokemon().cambiarImagen()
		self.cambiarImagen()
	}
}


object ash {
	
	var property pokemon = charmander
	
	var property lastPosition
	var property position = game.at(2,1)
	
	var property ultimoPokemonColisionado = charmander
	
	method image() = return "ash.png"
	
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
}
