import 'package:bookly/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDeatilsViewBody extends StatelessWidget {
  const BookDeatilsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(height: 50.0),
                ),
                SimilarBooksSection(),
                SizedBox(height: 40.0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
