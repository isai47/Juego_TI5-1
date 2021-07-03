class JuegosModel {
  int? id;
  String? title;
  String? thumbnail;
  String? genre;
  String? platform;
  String? developer;
  String? releasedate;

  JuegosModel({
    this.id,
    this.title,
    this.thumbnail,
    this.genre,
    this.platform,
    this.developer,
    this.releasedate,
  });

  factory JuegosModel.fromJsonMap(Map<String, dynamic> data) => JuegosModel(
      id: data['id'],
      title: data['title'],
      thumbnail: data['thumbnail'],
      genre: data['genre'],
      platform: data['platform'],
      developer: data['developer'],
      releasedate: data['release_date']);
}
