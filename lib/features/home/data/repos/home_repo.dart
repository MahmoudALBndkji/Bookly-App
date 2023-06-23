/// Note
/// Benefit Repo : Repo Represent Abstract Class Contain Methods Execute For Feature
/// The Method Not Contain Implemenation

import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
abstract class HomeRepo {
  fetchFeaturedBooks();
  fetchBestSellerBooks();
  // Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  // Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  // Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
  //     {required String category});
}
