object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var sueldo = 15000
	var caja = 0

	method sueldo() {
		return sueldo
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}

	method cobrarSueldo() {
		caja += self.sueldo()
	}

	method totalCobrado() {
		return caja
	}

}

object baigorria {

	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	var caja = 0
	var deuda = 0

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method cobrarSueldo() {
		if (self.sueldo() > deuda) {
			caja += self.sueldo() - deuda
			
			// TODO Mucho más fácil y claro sería hacer deuda = 0.
			deuda -= deuda
		} else {
			deuda -= self.sueldo()
		}
	}

	// TODO Hay lógica repetida entre cobrarSueldo y gastar, ¿cómo podría evitarse esto?
	method gastar(cuanto) {
		if (caja > cuanto) {
			caja -= cuanto
		} else {
			deuda += cuanto - caja
			// TODO No, hacé caja = 0
			caja -= caja
		}
	}

	method totalDeuda() {
		return deuda
	}

	method totalDinero() {
		return caja
	}

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

}

