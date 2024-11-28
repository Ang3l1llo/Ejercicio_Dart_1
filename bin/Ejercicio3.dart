import 'dart:io';

void main() {
  Map<String, double> calificaciones = {};

  while (true) {
    print("\n1. Añadir calificación");
    print("2. Mostrar calificaciones");
    print("3. Salir");
    stdout.write("Elige una opción: ");
    String? opcion = stdin.readLineSync();

    if (opcion == "1") {
      stdout.write("Introduce el nombre del estudiante: ");
      String? nombre = stdin.readLineSync();

      if (nombre != null && nombre.isNotEmpty) {
        if (calificaciones.containsKey(nombre)) {
          print("El estudiante '$nombre' ya tiene una calificación asignada.");

        } else {
          stdout.write("Introduce la calificación de $nombre: ");
          String? entradaCalificacion = stdin.readLineSync();

          if (entradaCalificacion != null && double.tryParse(entradaCalificacion) != null) {
            double calificacion = double.parse(entradaCalificacion);
            calificaciones[nombre] = calificacion;
            print("Calificación añadida para $nombre: $calificacion");

          } else {
            print("Calificación no válida. Intenta nuevamente.");
          }
        }
        
      } else {
        print("El nombre no puede estar vacío.");
      }

    } else if (opcion == "2") {
      print("Calificaciones:");
      calificaciones.forEach((nombre, calificacion) {
        print("$nombre: $calificacion");
      });

    } else if (opcion == "3") {
      print("Saliendo...");
      break;

    } else {
      print("Opción no válida.");
    }
  }
}