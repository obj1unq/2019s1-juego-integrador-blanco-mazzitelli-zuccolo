import pokemon.*
import wollok.game.*
import listaDePokemon.*

object mapa {
	
	method dibujarMapa() {
		
		game.ground("suelo.png")
		
		// Camino
		
		game.addVisualIn(camino, game.at(1,1))
		
		// Pastos Principiante - Medio - Avanzado
		
		(1..9).forEach { y =>	(5..10).forEach { x => game.addVisualIn(pasto, game.at(x,y)) }	}
		
		(1..3).forEach { y =>	(12..29).forEach { x => game.addVisualIn(pasto, game.at(x,y)) }	}
		
		(11..14).forEach { y =>	(16..25).forEach { x => game.addVisualIn(pasto, game.at(x,y)) }	}

		// Fences Primer Zona
		const fence1 = new Fence()	
		const fence2 = new Fence()
		const fence3 = new Fence()
		const fence4 = new Fence()
		const fence5 = new Fence()
		const fence6 = new Fence()
		
		game.addVisualIn(fence1, game.at(5,10))	
		game.addVisualIn(fence2, game.at(6,10))
		game.addVisualIn(fence3, game.at(7,10))
		game.addVisualIn(fence4, game.at(8,10))
		game.addVisualIn(fence5, game.at(9,10))
		game.addVisualIn(fence6, game.at(10,10))
		
		// Fences Segunda Zona
		const fence7 = new Fence()
		const fence8 = new Fence()
		const fence9 = new Fence()
		const fence10 = new Fence()
		const fence11 = new Fence()
		const fence12 = new Fence()
		const fence13 = new Fence()
		const fence14 = new Fence()
		const fence15 = new Fence()
		const fence16 = new Fence()
		const fence17 = new Fence()
		const fence18 = new Fence()
		const fence19 = new Fence()
		const fence20 = new Fence()
		const fence21 = new Fence()
		const fence22 = new Fence()
		
		game.addVisualIn(fence7, game.at(12,4))	
		game.addVisualIn(fence8, game.at(13,4))
		game.addVisualIn(fence9, game.at(14,4))
		game.addVisualIn(fence10, game.at(15,4))
		game.addVisualIn(fence11, game.at(16,4))
		game.addVisualIn(fence12, game.at(17,4))
		game.addVisualIn(fence13, game.at(18,4))
		game.addVisualIn(fence14, game.at(19,4))
		game.addVisualIn(fence15, game.at(22,4))
		game.addVisualIn(fence16, game.at(23,4))
		game.addVisualIn(fence17, game.at(24,4))
		game.addVisualIn(fence18, game.at(25,4))
		game.addVisualIn(fence19, game.at(26,4))
		game.addVisualIn(fence20, game.at(27,4))
		game.addVisualIn(fence21, game.at(28,4))
		game.addVisualIn(fence22, game.at(29,4))
		
		// Fences Tercer Zona

		const fence23 = new Fence()
		const fence24 = new Fence()
		const fence25 = new Fence()
		const fence26 = new Fence()
		const fence27 = new Fence()
		const fence28 = new Fence()
		const fence29 = new Fence()
		const fence30 = new Fence()

		game.addVisualIn(fence23, game.at(16,10))
		game.addVisualIn(fence24, game.at(17,10))
		game.addVisualIn(fence25, game.at(18,10))
		game.addVisualIn(fence26, game.at(19,10))
		game.addVisualIn(fence27, game.at(22,10))
		game.addVisualIn(fence28, game.at(23,10))
		game.addVisualIn(fence29, game.at(24,10))
		game.addVisualIn(fence30, game.at(25,10))		

		
		// Batalla Final
		
		game.addVisualIn(batallaFinal, game.at(27,13))
		
		//Hospital
		
		game.addVisualIn(hospital, game.at(1,14))		 
		
		// Pokemon 
		
		game.addVisualIn(bulbasaur, game.at(5.randomUpTo(10).truncate(0), 1.randomUpTo(9).truncate(0)))	
		game.addVisualIn(squirtle, game.at(5.randomUpTo(10).truncate(0), 1.randomUpTo(9).truncate(0)))
		game.addVisualIn(ivysaur, game.at(12.randomUpTo(29).truncate(0), 1.randomUpTo(3).truncate(0)))
		game.addVisualIn(wartortle, game.at(12.randomUpTo(29).truncate(0), 1.randomUpTo(3).truncate(0)))
		game.addVisualIn(venasaur, game.at(16.randomUpTo(25).truncate(0), 11.randomUpTo(14).truncate(0)))
		game.addVisualIn(blastoise, game.at(16.randomUpTo(25).truncate(0), 11.randomUpTo(14).truncate(0)))
		
		game.addVisual(ash)
		
		//No se puede usar metodo addVisualCharacter porque sino no hay manera de recordar la lastPosition.
		keyboard.up().onPressDo { ash.move(ash.position().up(1)) }
		keyboard.down().onPressDo { ash.move(ash.position().down(1)) }
		keyboard.left().onPressDo { ash.move(ash.position().left(1)) }
		keyboard.right().onPressDo { ash.move(ash.position().right(1)) }
		
		//Colisiones
		game.whenCollideDo (ash, { entidad => entidad.colisionasteCon(ash) })
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
	
	method image() = "fence.png"
	
	method colisionasteCon(entrenador) {
		entrenador.pokemon().vidaActual(entrenador.pokemon().vida() + 40)
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

object batallaFinal {
	method image() = "peleaFinal.png"
	
	method colisionasteCon(entrenador) {
		//Ejecutar batalla final.
	}
}