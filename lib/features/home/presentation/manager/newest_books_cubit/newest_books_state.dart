part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewsetBooksLoading extends NewestBooksState {}

class NewsetBooksSuccess extends NewestBooksState {
  final List<BookModel> books;
  const NewsetBooksSuccess(this.books);
}

class NewsetBooksFailure extends NewestBooksState {
  final String errorMessage;
  const NewsetBooksFailure(this.errorMessage);
}
