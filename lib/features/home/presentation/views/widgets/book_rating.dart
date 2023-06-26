import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;

  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
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
}
