import 'package:dartz/dartz.dart';
import 'package:imdb_app/core/error/failure.dart';
import 'package:imdb_app/movies/data/datasource/movie_remote_data_source.dart';
import 'package:imdb_app/movies/domain/entities/movies.dart';

abstract class BaseMoviesRepository{
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  BaseMoviesRepository(this.baseMovieRemoteDataSource);
  Future<Either<Failure,List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure,List<Movie>>> getPopularMovies();
  Future<Either<Failure,List<Movie>>> getTopRatedMovies();
}