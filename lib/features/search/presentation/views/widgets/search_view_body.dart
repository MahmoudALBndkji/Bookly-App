import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            SizedBox(height: 30.0),
            CustomSearchTextField(),
            SizedBox(height: 30.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Search Result",
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(height: 10.0),
            Divider(
              color: Colors.white,
              thickness: .6,
            ),
            Expanded(
              child: SearchResultListView(),
            ),
          ],
        ),
      );
}
