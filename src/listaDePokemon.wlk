import pokemon.*
import ataques.*
import estadosYTipo.*

const charmander = new Pokemon("charmander.png",fuego, 130, 120, 80, 1)
const bulbasaur = new Pokemon("bulbasaurRiv.png",planta, 170, 80, 100, 1)
const squirtle = new Pokemon("squirtleRiv.png",agua, 150, 100, 120, 1)

const charmeleon = new Pokemon("charmeleon.png",fuego, 180, 200, 130, 2)
const ivysaur = new Pokemon("ivysuarRiv.png",planta, 250, 130, 180, 2)
const wartortle = new Pokemon("wartortleRiv.png",agua, 230, 150, 200, 2)

const charizard = new Pokemon("charizard.png",fuego, 260, 340, 210, 3)
const venasaur = new Pokemon("venasaurRiv.png",planta, 390, 210, 320, 3)
const blastoise = new Pokemon("blastoiseRiv.png",agua, 370, 230, 340, 3)

const mewtwo = new Pokemon("mewtwo.png",psiquico, 330, 380, 290, 4)

/* Como charmander y todas sus evoluciones van a pertenecer al entrenador, su imagen cuando querramos cambiarl al entrar a la batalla siempre va a ser
 * la default, ahora como nuestro entrenador nunca va a tener ni a bulbasaur ni a squirtle (y ninguna evolucion), estos tienen la imagen Riv, para que apunten
 * hacia la camara en la visual de batalla. */