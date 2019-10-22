import plagas.*

class Hogar {

	var property nivelDeMugre
	var property confortQueOfrece

	method esBueno() {
		return nivelDeMugre <= (confortQueOfrece / 2)
	}

	method recibeAtaque(plaga) {
		nivelDeMugre += plaga.nivelDeDanio()
	}

}

class Huerta {

	var property capacidadDeProduccion
	var property nivel = 0

	method esBueno() {
		return capacidadDeProduccion > nivel
	}

	method recibeAtaque(plaga) {
		capacidadDeProduccion -= plaga.nivelDeDanio() * 0.1
		if (plaga.transmitenEnfermedades()) {
			capacidadDeProduccion -= 10
		}
	}

}

class Mascota {

	var property nivelDeSalud

	method esBueno() {
		return nivelDeSalud > 250
	}

	method recibeAtaque(plaga) {
		if (plaga.transmitenEnfermedades()) {
			nivelDeSalud -= plaga.nivelDeDanio()
		}
	}

}

