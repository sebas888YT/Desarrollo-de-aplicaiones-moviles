void main() {

  final persona1 = Persona(
    nombre: 'Sebastian',
    apellido: 'Herrera',
    isAlive: true
  );

  print(persona1);


  final Map<String, dynamic> rawJson = {
    'nombre': 'sebastian',
    'apellido': 'herrera',
    'isAlive': true
  };

  final persona2 = Persona.fromJson(rawJson);

  print(persona2);

  persona1.mostrarDatos();

  persona1.saludar('Bienvenido');

  print(persona1.presentarse());

  print(persona1.mensaje('Hola'));
}


class Persona {

  String nombre;
  String apellido;
  bool isAlive;


  Persona({
    required this.nombre,
    required this.apellido,
    required this.isAlive
  });

  Persona.fromJson(Map<String, dynamic> json)
      : nombre = json['nombre'] ?? 'No name found',
        apellido = json['apellido'] ?? 'No apellido found',
        isAlive = json['isAlive'] ?? false;

  void mostrarDatos() {
    print('Nombre: $nombre, Apellido: $apellido');
  }

  void saludar(String texto) {
    print('$texto $nombre');
  }

  String presentarse() => 'Soy $nombre $apellido';

  String mensaje(String texto) => '$texto, $nombre';

  @override
  toString() {
    return 'Nombre: $nombre, Apellido: $apellido, isAlive: ${isAlive ? 'YES' : 'NO'}';
  }
}
