import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepoImpl) : super(SimilarBooksInitial());
  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepoImpl.fetchSimilarBooks(category: category);
    result.fold(
      (failure) => emit(SimilarBooksFailure(failure.errorMessage)),
      (books) => emit(SimilarBooksSuccess(books)),
    );
  }
}
