import elementos.*

class Plagas {

	var property poblacion
	var nivelDeDanio

	method transmitenEnfermedades() {
		return poblacion > 10
	}

	method ataqueA(elemento) {
		elemento.recibeAtaque(self)
		self.efecto()
	}

	method efecto() {
		poblacion += poblacion * 0.1
	}

	method nivelDeDanio() {
		return nivelDeDanio
	}

}

class Cucaracha inherits Plagas {

	var property pesoPromedio

	override method nivelDeDanio() {
		nivelDeDanio = poblacion / 2
		return nivelDeDanio
	}

	override method transmitenEnfermedades() {
		return super() and pesoPromedio >= 10
	}

	override method efecto() {
		pesoPromedio += 2
		poblacion += poblacion * 0.1
	}

}

class Pulgas inherits Plagas {

	override method nivelDeDanio() {
		nivelDeDanio = poblacion * 2
		return nivelDeDanio
	}

}

class Garrapatas inherits Plagas {

	override method nivelDeDanio() {
		nivelDeDanio = poblacion
		return nivelDeDanio
	}

	override method efecto() {
		poblacion += poblacion * 0.2
	}

}

class Mosquitos inherits Plagas {

	override method nivelDeDanio() {
		nivelDeDanio = poblacion
		return nivelDeDanio
	}

	override method transmitenEnfermedades() {
		return super() and poblacion % 3 == 0
	}

}

