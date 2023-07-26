import 'dart:io';

import 'package:menu/Carro.dart';
import 'package:menu/Motocicleta.dart';
import 'package:menu/Vehiculo.dart';

void main(List<String> arguments) {

  List<Motocicleta> motocicletas = []; 
  List<Carro> carros = [];

  for (int i = 1;; i++) {

    print("Seleccione una opcion");
    print("1. Para Motocicleta");
    print("2. Carro");
    print("3. para salir");

    int opcion = int.parse(stdin.readLineSync()!); 

    if (opcion == 3) break;

    else if (opcion == 1) {

      print("Selecionaste Motocileta");

      print("Placa = ");
      String placa = stdin.readLineSync()!; 
      print("Color = ");
      String color = stdin.readLineSync()!; 
      print("Modelo = ");
      String modelo = stdin.readLineSync()!; 
      print("capacidad = ");
      int capacidad = int.parse(stdin.readLineSync()!);
      print("tarifa = ");
      double tarifa_dia = double.parse(stdin.readLineSync()!);
      print("dia = ");
      int dia = int.parse(stdin.readLineSync()!);

      Motocicleta moto = new Motocicleta(placa, color, modelo, capacidad, tarifa_dia);

      moto.Registrar(motocicletas, moto);


      double valor_total = moto.calculas_valor_alquiler(dia);
      print("Valor total alquiler = ${valor_total} ");

      print(motocicletas[0]);
      



    }

    else if (opcion == 2) {

      print("Selecionaste Carro");

      print("Placa = ");
      String placa = stdin.readLineSync()!; 
      print("Color = ");
      String color = stdin.readLineSync()!; 
      print("Modelo = ");
      String modelo = stdin.readLineSync()!; 
      print("capacidad = ");
      int capacidad = int.parse(stdin.readLineSync()!);
      print("dia = ");
      int dia = int.parse(stdin.readLineSync()!);

      Vehiculo carro = new Vehiculo(placa, color, modelo, capacidad, 700);

      carro.Registrar(carros, carro);

      
    }

    else print("${opcion} No es valido");

  }
}
