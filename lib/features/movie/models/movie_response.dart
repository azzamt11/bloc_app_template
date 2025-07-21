import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_app_template/features/movie/models/movie.dart';

part 'movie_response.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieResponse {
  MovieResponse(this.page, this.movies);

  static const fromJsonFactory = _$MovieResponseFromJson;

  final int page;
  @JsonKey(name: 'results')
  final List<Movie> movies;
}
