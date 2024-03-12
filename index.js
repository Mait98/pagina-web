
class Avion {
    // atributos
    color = "blanco"
    tamaño = "126"
    modelo = "Boeing 737"
    
    constructor(color, tamaño, modelo) {
        this.color = color
        this.tamaño = tamaño
        this.modelo = modelo
    }
   
    //metodos
    arrancar() {
        return "Arrancando!!!"
    }

    aterrizar() {
        return "Aterrizando!!!"
    }
}

class AirPlane extends Avion {
    pasajeros
    constructor(color, tamaño, modelo, pasajeros) {
    super(color, tamaño, modelo)
    this.pasajeros = pasajeros
    }

    getpasajeros() {
        return this.pasajeros
    }
}

class cargaplane extends Avion {
    pasajeros
    constructor(color, tamaño, modelo, carga) {
    super(color, tamaño, modelo)
    this.carga = carga
    }

    cargaNivel(porcentage) {
        return `El nivel de porcentage es ${porcentage}`
    }
}

class PrivateJet extends Avion {
    precio
    constructor(color, tamaño, modelo, precio) {
    super(color, tamaño, modelo)
    this.precio = precio
    }

    setValue(value) {
      this.precio = value
    }

    arrancar() {
        return "PrivateJet Start!!!"
    }
}

const AvionBasico = new Avion("blanco", 120, "boing737")

const avionAereo = new AirPlane("azul", 100,  )