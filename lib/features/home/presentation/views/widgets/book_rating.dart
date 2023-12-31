import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final int count;
  final num rating;
  final MainAxisAlignment mainAxisAlignment;

  const BookRating({
    super.key,
    required this.count,
    required this.rating,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            size: 14.0,
            color: Color(0xffFFDD4F),
          ),
          const SizedBox(width: 6.3),
          Text(
            rating.toString(),
            style: Styles.textStyle16,
          ),
          const SizedBox(width: 5.0),
          Opacity(
            opacity: .5,
            child: Text(
              '($count)',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      );
}
