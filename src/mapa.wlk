import pokemon.*
import wollok.game.*
import listaDePokemon.*

object mapa {
	
	method dibujar() {
		//	VISUALES
		// camino
		
		game.addVisualIn(camino, game.at(1,1))
		
		
		//PASTO
		
		// pastos adelante (principiante)
		
		game.addVisualIn(pasto, game.at(5,1))
		game.addVisualIn(pasto, game.at(5,2))
		game.addVisualIn(pasto, game.at(5,3))
		game.addVisualIn(pasto, game.at(5,4))
		game.addVisualIn(pasto, game.at(5,5))
		game.addVisualIn(pasto, game.at(5,6))
		game.addVisualIn(pasto, game.at(5,7))
		game.addVisualIn(pasto, game.at(5,8))
		game.addVisualIn(pasto, game.at(5,9))
		game.addVisualIn(pasto, game.at(6,1))
		game.addVisualIn(pasto, game.at(6,2))
		game.addVisualIn(pasto, game.at(6,3))
		game.addVisualIn(pasto, game.at(6,4))
		game.addVisualIn(pasto, game.at(6,5))
		game.addVisualIn(pasto, game.at(6,6))
		game.addVisualIn(pasto, game.at(6,7))
		game.addVisualIn(pasto, game.at(6,8))
		game.addVisualIn(pasto, game.at(6,9))
		game.addVisualIn(pasto, game.at(7,1))
		game.addVisualIn(pasto, game.at(7,2))
		game.addVisualIn(pasto, game.at(7,3))
		game.addVisualIn(pasto, game.at(7,4))
		game.addVisualIn(pasto, game.at(7,5))
		game.addVisualIn(pasto, game.at(7,6))
		game.addVisualIn(pasto, game.at(7,7))
		game.addVisualIn(pasto, game.at(7,8))
		game.addVisualIn(pasto, game.at(7,9))
		game.addVisualIn(pasto, game.at(8,1))
		game.addVisualIn(pasto, game.at(8,2))
		game.addVisualIn(pasto, game.at(8,3))
		game.addVisualIn(pasto, game.at(8,4))
		game.addVisualIn(pasto, game.at(8,5))
		game.addVisualIn(pasto, game.at(8,6))
		game.addVisualIn(pasto, game.at(8,7))
		game.addVisualIn(pasto, game.at(8,8))
		game.addVisualIn(pasto, game.at(8,9))
		game.addVisualIn(pasto, game.at(9,1))
		game.addVisualIn(pasto, game.at(9,2))
		game.addVisualIn(pastoMalo, game.at(9,2)) //pasto mallo
		game.addVisualIn(pasto, game.at(9,3))
		game.addVisualIn(pasto, game.at(9,4))
		game.addVisualIn(pasto, game.at(9,5))
		game.addVisualIn(pasto, game.at(9,6))
		game.addVisualIn(pasto, game.at(9,7))
		game.addVisualIn(pasto, game.at(9,8))
		game.addVisualIn(pasto, game.at(9,9))
		game.addVisualIn(pasto, game.at(10,1))
		game.addVisualIn(pasto, game.at(10,2))
		game.addVisualIn(pasto, game.at(10,3))
		game.addVisualIn(pasto, game.at(10,4))
		game.addVisualIn(pasto, game.at(10,5))
		game.addVisualIn(pasto, game.at(10,6))
		game.addVisualIn(pasto, game.at(10,7))
		game.addVisualIn(pasto, game.at(10,8))
		game.addVisualIn(pasto, game.at(10,9))
		
		//pastos abajo (medio)
		
		game.addVisualIn(pasto, game.at(12,1))
		game.addVisualIn(pasto, game.at(12,2))
		game.addVisualIn(pasto, game.at(12,3))
		game.addVisualIn(pasto, game.at(13,1))
		game.addVisualIn(pasto, game.at(13,2))
		game.addVisualIn(pasto, game.at(13,3))
		game.addVisualIn(pasto, game.at(14,1))
		game.addVisualIn(pasto, game.at(14,2))
		game.addVisualIn(pasto, game.at(14,3))
		game.addVisualIn(pasto, game.at(15,1))
		game.addVisualIn(pasto, game.at(15,2))
		game.addVisualIn(pasto, game.at(15,3))
		game.addVisualIn(pasto, game.at(16,1))
		game.addVisualIn(pasto, game.at(16,2))
		game.addVisualIn(pasto, game.at(16,3))
		game.addVisualIn(pasto, game.at(17,1))
		game.addVisualIn(pasto, game.at(17,2))
		game.addVisualIn(pasto, game.at(17,3))
		game.addVisualIn(pasto, game.at(18,1))
		game.addVisualIn(pasto, game.at(18,2))
		game.addVisualIn(pasto, game.at(18,3))
		game.addVisualIn(pasto, game.at(19,1))
		game.addVisualIn(pasto, game.at(19,2))
		game.addVisualIn(pasto, game.at(19,3))
		game.addVisualIn(pasto, game.at(20,1))
		game.addVisualIn(pasto, game.at(20,2))
		game.addVisualIn(pasto, game.at(20,3))
		game.addVisualIn(pasto, game.at(21,1))
		game.addVisualIn(pasto, game.at(21,2))
		game.addVisualIn(pasto, game.at(21,3))
		game.addVisualIn(pasto, game.at(22,1))
		game.addVisualIn(pasto, game.at(22,2))
		game.addVisualIn(pasto, game.at(22,3))
		game.addVisualIn(pasto, game.at(23,1))
		game.addVisualIn(pasto, game.at(23,2))
		game.addVisualIn(pasto, game.at(23,3))
		game.addVisualIn(pasto, game.at(24,1))
		game.addVisualIn(pasto, game.at(24,2))
		game.addVisualIn(pasto, game.at(24,3))
		game.addVisualIn(pasto, game.at(25,1))
		game.addVisualIn(pasto, game.at(25,2))
		game.addVisualIn(pasto, game.at(25,3))
		game.addVisualIn(pasto, game.at(26,1))
		game.addVisualIn(pasto, game.at(26,2))
		game.addVisualIn(pasto, game.at(26,3))
		game.addVisualIn(pasto, game.at(27,1))
		game.addVisualIn(pasto, game.at(27,2))
		game.addVisualIn(pasto, game.at(27,3))
		game.addVisualIn(pasto, game.at(28,1))
		game.addVisualIn(pasto, game.at(28,2))
		game.addVisualIn(pasto, game.at(28,3))
		game.addVisualIn(pasto, game.at(29,1))
		game.addVisualIn(pasto, game.at(29,2))
		game.addVisualIn(pasto, game.at(29,3))
		
		//pastos de arriba (avanzado)
		
		//16,11
		game.addVisualIn(pasto, game.at(16,11))	
		game.addVisualIn(pasto, game.at(16,12))
		game.addVisualIn(pasto, game.at(16,13))
		game.addVisualIn(pasto, game.at(16,14))
		game.addVisualIn(pasto, game.at(17,11))	
		game.addVisualIn(pasto, game.at(17,12))
		game.addVisualIn(pasto, game.at(17,13))
		game.addVisualIn(pasto, game.at(17,14))
		game.addVisualIn(pasto, game.at(18,11))	
		game.addVisualIn(pasto, game.at(18,12))
		game.addVisualIn(pasto, game.at(18,13))
		game.addVisualIn(pasto, game.at(18,14))
		game.addVisualIn(pasto, game.at(19,11))	
		game.addVisualIn(pasto, game.at(19,12))
		game.addVisualIn(pasto, game.at(19,13))
		game.addVisualIn(pasto, game.at(19,14))
		game.addVisualIn(pasto, game.at(20,11))	
		game.addVisualIn(pasto, game.at(20,12))
		game.addVisualIn(pasto, game.at(20,13))
		game.addVisualIn(pasto, game.at(20,14))
		game.addVisualIn(pasto, game.at(21,11))	
		game.addVisualIn(pasto, game.at(21,12))
		game.addVisualIn(pasto, game.at(21,13))
		game.addVisualIn(pasto, game.at(21,14))
		game.addVisualIn(pasto, game.at(22,11))	
		game.addVisualIn(pasto, game.at(22,12))
		game.addVisualIn(pasto, game.at(22,13))
		game.addVisualIn(pasto, game.at(22,14))
		game.addVisualIn(pasto, game.at(23,11))	
		game.addVisualIn(pasto, game.at(23,12))
		game.addVisualIn(pasto, game.at(23,13))
		game.addVisualIn(pasto, game.at(23,14))
		game.addVisualIn(pasto, game.at(24,11))	
		game.addVisualIn(pasto, game.at(24,12))
		game.addVisualIn(pasto, game.at(24,13))
		game.addVisualIn(pasto, game.at(24,14))
		game.addVisualIn(pasto, game.at(25,11))	
		game.addVisualIn(pasto, game.at(25,12))
		game.addVisualIn(pasto, game.at(25,13))
		game.addVisualIn(pasto, game.at(25,14))
		
		
	
		
		//colliders pasto
		
		// game.whenCollideDo(pastoMalo, { ash => ash.encontrePokemon() })
		
		// FENCE
		
		//primera parte
		const fence1 = new Fence()
		const fence2 = new Fence()
		const fence3 = new Fence()
		const fence4 = new Fence()
		const fence5 = new Fence()
		const fence6 = new Fence()
		//segunda parte
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
		//tercera parte
		const fence21 = new Fence()
		const fence22 = new Fence()
		const fence23 = new Fence()
		const fence24 = new Fence()
		const fence25 = new Fence()
		const fence26 = new Fence()
		const fence27 = new Fence()
		const fence28 = new Fence()
		const fence29 = new Fence()
		const fence30 = new Fence()
		
		
		
		// primera parte
		
		game.addVisualIn(fence1, game.at(5,10))	
		game.addVisualIn(fence2, game.at(6,10))
		game.addVisualIn(fence3, game.at(7,10))
		game.addVisualIn(fence4, game.at(8,10))
		game.addVisualIn(fence5, game.at(9,10))
		game.addVisualIn(fence6, game.at(10,10))
		
		// segunda parte
		
		game.addVisualIn(fence7, game.at(12,4))	
		game.addVisualIn(fence8, game.at(13,4))
		game.addVisualIn(fence9, game.at(14,4))
		game.addVisualIn(fence10, game.at(15,4))
		game.addVisualIn(fence11, game.at(16,4))
		game.addVisualIn(fence12, game.at(17,4))
		game.addVisualIn(fence13, game.at(18,4))
		game.addVisualIn(fence14, game.at(23,4))
		game.addVisualIn(fence15, game.at(24,4))
		game.addVisualIn(fence16, game.at(25,4))
		game.addVisualIn(fence17, game.at(26,4))
		game.addVisualIn(fence18, game.at(27,4))
		game.addVisualIn(fence19, game.at(28,4))
		game.addVisualIn(fence20, game.at(29,4))
		game.addVisualIn(fence29, game.at(19,4))
		game.addVisualIn(fence30, game.at(22,4))
		
		
		//tercera parte
		game.addVisualIn(fence21, game.at(16,10))
		game.addVisualIn(fence22, game.at(17,10))
		game.addVisualIn(fence23, game.at(18,10))
		game.addVisualIn(fence24, game.at(19,10))
		game.addVisualIn(fence25, game.at(22,10))
		game.addVisualIn(fence26, game.at(23,10))
		game.addVisualIn(fence27, game.at(24,10))
		game.addVisualIn(fence28, game.at(25,10))
	
		// coplliders fences
		
		game.whenCollideDo(fence1, { ash => ash.stop() })
		game.whenCollideDo(fence2, { ash => ash.stop() })
		game.whenCollideDo(fence3, { ash => ash.stop() })
		game.whenCollideDo(fence4, { ash => ash.stop() })
		game.whenCollideDo(fence5, { ash => ash.stop() })
		game.whenCollideDo(fence6, { ash => ash.stop() })
		game.whenCollideDo(fence7, { ash => ash.stop() })
		game.whenCollideDo(fence8, { ash => ash.stop() })
		game.whenCollideDo(fence9, { ash => ash.stop() })
		game.whenCollideDo(fence10, { ash => ash.stop() })
		game.whenCollideDo(fence11, { ash => ash.stop() })
		game.whenCollideDo(fence12, { ash => ash.stop() })
		game.whenCollideDo(fence13, { ash => ash.stop() })
		game.whenCollideDo(fence14, { ash => ash.stop() })
		game.whenCollideDo(fence15, { ash => ash.stop() })
		game.whenCollideDo(fence16, { ash => ash.stop() })
		game.whenCollideDo(fence17, { ash => ash.stop() })
		game.whenCollideDo(fence18, { ash => ash.stop() })
		game.whenCollideDo(fence19, { ash => ash.stop() })
		game.whenCollideDo(fence20, { ash => ash.stop() })
		game.whenCollideDo(fence21, { ash => ash.stop() })
		game.whenCollideDo(fence22, { ash => ash.stop() })
		game.whenCollideDo(fence23, { ash => ash.stop() })
		game.whenCollideDo(fence24, { ash => ash.stop() })
		game.whenCollideDo(fence25, { ash => ash.stop() })
		game.whenCollideDo(fence26, { ash => ash.stop() })
		game.whenCollideDo(fence27, { ash => ash.stop() })
		game.whenCollideDo(fence28, { ash => ash.stop() })
		game.whenCollideDo(fence29, { ash => ash.stop() })
		game.whenCollideDo(fence30, { ash => ash.stop() })
		
		
		// Batalla Final
		
		game.addVisualIn(batallaFinal, game.at(27,13))
		
		// ASH
		
		const ash1 = new Entrenador()
		game.addVisual(ash1)
		 
		 
		//	TECLADO
		keyboard.up().onPressDo { ash1.move(ash1.position().up(1)) }
		keyboard.down().onPressDo { ash1.move(ash1.position().down(1)) }
		keyboard.left().onPressDo { ash1.move(ash1.position().left(1)) }
		keyboard.right().onPressDo { ash1.move(ash1.position().right(1)) }
	
		// PELEA
		
		//game.addVisualIn(pelea, game.at(4,1))
		//game.addVisualIn(charmanderRiv, game.at(17,9))
			
	}
}

object mouse {
	
	var property position = game.at(3,2)
	
	method image() {return "mousePelea.png"}
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}
	method realizarAccion(){
		if (position == game.at (3,2)){
			self.atacar()
		}else {
			self.atrapar()
		}
	}
	method atacar() {
		game.say(self, "estoy atacando")
	}
	method atrapar() {
		game.say(self, "tirar pokeball") 
	}
	
}

object atacar {
	method image() {return "atacar.png"}
}

object atrapar {
	method image() {return "atrapar.png"}
}

object pasto {
	method image() {return "pasto.png"}
}

object pastoMalo {
	method image() {return "pasto.png"}
}


object camino {
	method image() {return "camino.png"}
}

object batallaFinal {
	method image() {return "peleaFinal.png"}
}

object charmanderRiv {
	method image() {return "charmanderRiv.png"}
}

class Fence {
	method image() {return "fence.png"}
}

object basePeleaAsh {
	method image() {return "basePeleaAsh.png"}
}

object pelea {
	method image() {return "pelea.png"}
}

object basePeleaRival {
	method image() {return "basePeleaRival.png"}
}

object menuPelea {
	method image() {return "menuPelea.png"}
}

object mewtwo {
	method image() {return "mewtwo.png"}
}
