import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/newset_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) => const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kSymmetricHorizantal),
                  child: CustomAppBar(),
                ),
                FeatureBooksListView(),
                SizedBox(height: 50.0),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kSymmetricHorizantal),
                  child: Text(
                    "Newset Books",
                    style: Styles.textStyle18,
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kSymmetricHorizantal),
              child: NewsetBooksListView(),
            ),
          ),
        ],
      );
}
