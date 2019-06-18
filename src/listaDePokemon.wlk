import pokemon.*
import ataques.*
import estadosYTipo.*

const charmander = new Pokemon("charmander.png", fuego, 30, 30, 20, 15, 1)
const bulbasaur = new Pokemon("bulbasaurRiv.png", planta, 50, 50, 15, 30, 1)
const squirtle = new Pokemon("squirtleRiv.png", agua, 40, 40, 17, 20, 1)

const charmeleon = new Pokemon("charmeleon.png", fuego, 150, 150, 200, 130, 2)
const ivysaur = new Pokemon("ivysaurRiv.png", planta, 250, 250, 130, 180, 2)
const wartortle = new Pokemon("wartortleRiv.png", agua, 200, 200, 150, 200, 2)

const charizard = new Pokemon("charizard.png", fuego, 500, 500, 340, 250, 3)
const venasaur = new Pokemon("venusaurRiv.png", planta, 650, 650, 250, 280, 3)
const blastoise = new Pokemon("blastoiseRiv.png", agua, 575, 575, 280, 320, 3)

const megaCharizard = new Pokemon("charizard.png", fuego, 1000, 1000, 600, 400, 4)
const mewtwo = new Pokemon("mewtwo.png", psiquico, 1000, 1000, 500, 350, 4)

/* Como charmander y todas sus evoluciones van a pertenecer al entrenador, su imagen cuando querramos cambiarl al entrar a la batalla siempre va a ser
 * la default, ahora como nuestro entrenador nunca va a tener ni a bulbasaur ni a squirtle (y ninguna evolucion), estos tienen la imagen Riv, para que apunten
 * hacia la camara en la visual de batalla. */