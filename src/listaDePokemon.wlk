import pokemon.*
import ataques.*
import estadosYTipo.*

const charmander = new Pokemon("charmander.png", fuego, 30, 30, 10, 15, 1, "charmander")
const bulbasaur = new Pokemon("bulbasaurRiv.png", planta, 50, 50, 5, 30, 1, "bulbasaur")
const squirtle = new Pokemon("squirtleRiv.png", agua, 40, 40, 17, 8, 1, "squirtle")

const charmeleon = new Pokemon("charmeleon.png", fuego, 150, 150, 100, 130, 2, "charmeleon")
const ivysaur = new Pokemon("ivysaurRiv.png", planta, 250, 250, 50, 180, 2, "ivysaur")
const wartortle = new Pokemon("wartortleRiv.png", agua, 200, 200, 80, 200, 2, "wartortle")

const charizard = new Pokemon("charizard.png", fuego, 500, 500, 150, 250, 3, "charizard")
const venasaur = new Pokemon("venusaurRiv.png", planta, 650, 650, 100, 280, 3, "venasaur")
const blastoise = new Pokemon("blastoiseRiv.png", agua, 575, 575, 130, 320, 3, "blastoise")

const megaCharizard = new Pokemon("charizard.png", fuego, 1000, 1000, 300, 400, 4, "megaCharizard")
const mewtwo = new Pokemon("mewtwo.png", psiquico, 1000, 1000, 300, 350, 4, "mewtwo")

/* Como charmander y todas sus evoluciones van a pertenecer al entrenador, su imagen cuando querramos cambiarl al entrar a la batalla siempre va a ser
 * la default, ahora como nuestro entrenador nunca va a tener ni a bulbasaur ni a squirtle (y ninguna evolucion), estos tienen la imagen Riv, para que apunten
 * hacia la camara en la visual de batalla. */