import 'package:get/get.dart';
import 'package:proyecto/models/juegos_model.dart';
import 'package:proyecto/providers/juego_providers.dart';

class JuegoState extends GetxController {
  List<JuegosModel> juegos = [];
  final _juegosProvider = JuegoProvider();
  int _pagina = 0;

  Future<void> obtenerJuegos() async {
    final juegosList = await _juegosProvider.obtenerJuegos(_pagina);
    juegos.addAll(juegosList);
    _pagina += 20;
    update();
  }
}
