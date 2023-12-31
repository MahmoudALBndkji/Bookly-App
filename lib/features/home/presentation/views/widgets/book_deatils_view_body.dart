import 'package:flutter/material.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';

class BookDeatilsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDeatilsViewBody({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) => CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  BookDetailsSection(
                    bookModel: bookModel,
                  ),
                  const Expanded(
                    child: SizedBox(height: 50.0),
                  ),
                  const SimilarBooksSection(),
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          ),
        ],
      );
}
