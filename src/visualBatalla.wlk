import pokemon.*
import wollok.game.*
import listaDePokemon.*

object visualBatalla {
	
	method dibujarVisualBatalla(pok1, pok2) {
	
		// fondo	
		game.ground("fondoBatalla.png")
		game.addVisualIn(pelea, game.at(5,1))
		
		// agregados pelea
		game.addVisualIn(pok1, game.at(6,5))
		game.addVisualIn(pok2, game.at(18,8))		
		game.addVisualIn(ataque1, game.at(8,1))
		game.addVisualIn(ataque2, game.at(17,1))

	}
}


//Para los ataques, hay que buscar la forma de que cuando tenemos a charmander las imagenes sean de los ataques de charmander, y asi con sus evoluciones.
//El problema principal es que no me esta dejando importar el program.wpgm, sino directamente le preguntamos el pokemon a ash1 y listo, pero no me dejo.
object ataque1 {
	
	method image() = "atacar.png" // Cambiar esta Imagen por la del nombre del ataque.
	
	
	method elegirImagen() {}
}

object ataque2 {
	
	method image() = "atacar.png" //Cambiar esta Imagen por la del nombre del ataque.
}

object pelea {
	
	method image() = "pelea.png"
}
