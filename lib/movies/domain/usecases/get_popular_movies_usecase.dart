
import 'package:dartz/dartz.dart';
import 'package:imdb_app/core/error/failure.dart';
import 'package:imdb_app/movies/domain/entities/movies.dart';
import 'package:imdb_app/movies/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUseCase{
  final BaseMoviesRepository baseMoviesRepository;
  GetPopularMoviesUseCase(this.baseMoviesRepository);

  Future<Either<Failure,List<Movie>>> execute()async{
    return await baseMoviesRepository.getPopularMovies();
  }
}