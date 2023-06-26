import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepoImpl) : super(NewestBooksInitial());
  final HomeRepoImpl homeRepoImpl;
  Future<void> fetchNewestBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepoImpl.fetchNewsetBooks();
    result.fold(
      (failure) => emit(NewsetBooksFailure(failure.errorMessage)),
      (books) => emit(NewsetBooksSuccess(books)),
    );
  }
}
