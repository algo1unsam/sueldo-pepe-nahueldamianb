object pepe {
	
	var cat = cadete
	var canFaltas = 1
	var bonoRes = nulo
	var bonoPre = bonoFaltas
	
	method sueldo() {
		return cat.neto() + bonoPre.monto(canFaltas) +  bonoRes.monto(cat.neto())
	} 
	
	method cambioCat(nuevaCategoria) {
		cat=nuevaCategoria
	}
	
	method cambioCanFaltas(faltas) {
		canFaltas=faltas
	}
	
	method cambiobonoRes(bonoR) {
		bonoRes=bonoR
	}
	
	method cambioPresentismo(nuevoBonoP) {
		bonoPre=nuevoBonoP
	}
}


object nulo {
	method monto(cantidad) = 0 
}

object bonoFaltas {
	
	method monto(cantidad) {
		if(cantidad == 0) 
		{
			return 100
		}
		else if(cantidad == 1) { 
			return 50
		}
		else
		return 0
	}
}
object gerente {
	var neto = 1000
	method neto() = neto
	
}


object bonoPorcentaje {
	method monto(neto) =  0.1 * neto
   }

object bonoFijo {
	method monto(cantidad) = 80
}



object cadete {
	var neto = 1500
	method neto() = neto
}
