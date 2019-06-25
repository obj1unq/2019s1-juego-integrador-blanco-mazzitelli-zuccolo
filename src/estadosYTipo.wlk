import pokemon.*
import ataques.*
import entrenador.*

class Tipo {
	const debilidades = []
	
	method agregarDebilidad(debilidad) = debilidades.add(debilidad)
	method listaDeDebilidades() = debilidades
}

const planta = new Tipo()
const agua = new Tipo()
const fuego = new Tipo()
const normal = new Tipo()
const volador = new Tipo()
const siniestro = new Tipo()
const psiquico = new Tipo()
const veneno = new Tipo()
const dragon = new Tipo()
const lucha = new Tipo()