import 'package:menu/Vehiculo.dart';

class Carro extends Vehiculo {

  double tarifa_dia = 600;

  Carro(String placa, String color, String modelo, int capacidad, this.tarifa_dia) : super (placa, color, modelo, capacidad);

  double Calculas_valor_alquiler(int dia) {

    return tarifa_dia * dia;

  }
}