import 'dart:io';

void main() {
  List<String> tareas = [];

  while (true) {
    print("\n1. Añadir tarea");
    print("2. Mostrar tareas");
    print("3. Salir");
    stdout.write("Elige una opción: ");
    String? opcion = stdin.readLineSync();

    if (opcion == "1") {
      stdout.write("Introduce una tarea: ");
      String? tarea = stdin.readLineSync();

      if (tarea != null && tarea.isNotEmpty) {
        tareas.add(tarea);
        print("Tarea añadida: $tarea");

      } else {
        print("La tarea no puede estar vacía.");
      }

    } else if (opcion == "2") {
      print("Lista de tareas:");

      for (int i = 0; i < tareas.length; i++) {
        print("${i + 1}. ${tareas[i]}");
      }

    } else if (opcion == "3") {
      print("Saliendo...");
      break;

    } else {
      print("Opción no válida.");
    }
  }
}