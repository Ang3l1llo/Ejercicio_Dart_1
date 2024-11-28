import 'dart:io';

void main() {
  Set<String> favoritos = {};

  while (true) {
    print("\n1. Añadir género musical favorito");
    print("2. Mostrar géneros favoritos");
    print("3. Salir");
    stdout.write("Elige una opción: ");
    String? opcion = stdin.readLineSync();

    if (opcion == "1") {
      stdout.write("Introduce el género musical: ");
      String? genero = stdin.readLineSync();

      if (genero != null) {
        if (favoritos.length >= 5) {
          print("Error: No puedes tener más de 5 géneros favoritos.");

        } else if (!favoritos.add(genero)) {
          print("Error: El género '$genero' ya está en tu lista de favoritos.");

        } else {
          print("Género '$genero' añadido.");
        }
      }

    } else if (opcion == "2") {
      print("Géneros favoritos: $favoritos");

    } else if (opcion == "3") {
      print("Saliendo...");
      break;

    } else {
      print("Opción no válida.");
    }
  }
}