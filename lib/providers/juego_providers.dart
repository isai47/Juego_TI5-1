import 'package:dio/dio.dart';
import 'package:proyecto/models/juegos_model.dart';

class JuegoProvider {
  final _url = 'https://www.freetogame.com/api/games';
  final _http = Dio();

  Future<List<JuegosModel>> obtenerJuegos(int pagina) async {
    List<JuegosModel> _juegos = [];
    final response = await _http.get(_url, queryParameters: {'offset': pagina});
    List<dynamic> data = response.data['results'];
    for (int i = 0; i < data.length; i++) {
      final responseJuegos = await _http.get(data[i]['url']);
      _juegos.add(JuegosModel.fromJsonMap(responseJuegos.data));
    }

    return _juegos;
  }
}
