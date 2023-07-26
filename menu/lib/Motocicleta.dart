import 'package:menu/Vehiculo.dart';

class Motocicleta extends Vehiculo {

  double tarifa_dia;

  Motocicleta( String placa, String color, String modelo, int capacidad, this.tarifa_dia) : super (placa, color, modelo, capacidad);


  double calculas_valor_alquiler(int dia) {

    return tarifa_dia * dia;

  }
}