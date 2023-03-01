import 'package:dartz/dartz.dart';

import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_sercice.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiSercice apiSercice;
  HomeRepoImpl(
    this.apiSercice,
  );
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewSetBooks() async {
    try {
      var data = await apiSercice.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=subject: programing");
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
