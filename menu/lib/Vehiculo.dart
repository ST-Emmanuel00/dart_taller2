import 'dart:ffi';

class Vehiculo {

  String placa;
  String color;
  String modelo;
  int capacidad;

  Vehiculo (this.placa, this.color, this.modelo, this.capacidad);

  void Registrar(lista, item ) {

    lista.add(item );

    print("Se guardo exitosamente");

  }


}