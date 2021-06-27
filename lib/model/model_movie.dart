class Movie {

  final String title;
  final String keyword;
  final String poster;
  final bool like;

  Movie.fromMap(Map<String,dynamic> map) :
        this.title = map['title'],
        this.keyword = map['keyword'],
        this.poster = map['poster'],
        this.like = map['like'];


  @override
  String toString() => "Movie $keyword";


}