import 'dart:convert';

import 'package:peliculas/models/movie.dart';

class PopularResponse {
  int page;
  List<Movie> results;
  int totalPages;
  int totalMovies;

  PopularResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalMovies,
  });

  factory PopularResponse.fromJson(String str) =>
      PopularResponse.fromMap(json.decode(str));

  factory PopularResponse.fromMap(Map<String, dynamic> map) {
    return PopularResponse(
      page: map['page'],
      results: List<Movie>.from(map['results'].map((x) => Movie.fromMap(x))),
      totalPages: map['total_pages'],
      totalMovies: map['total_results'],
    );
  }
}
