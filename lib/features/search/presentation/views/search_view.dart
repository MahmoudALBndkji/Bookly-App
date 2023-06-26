import 'package:flutter/material.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(
        body: SafeArea(
          child: SearchViewBody(),
        ),
      );
}
