class Juego {
  String? name;
  String? url;

  Juego({
    this.name,
    this.url,
  });

  factory Juego.fromMapJson(Map<String, dynamic> data) => Juego(
        name: data['name'],
        url: data['url'],
      );
}
