import 'package:flutter/material.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/core/utils/function/launch_url.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';

class BooksAction extends StatelessWidget {
  final BookModel bookModel;
  const BooksAction({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            const Expanded(
              child: CustomButton(
                text: "Free",
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0),
                ),
              ),
            ),
            Expanded(
              child: CustomButton(
                onPressed: () =>
                    launchCustomUrl(context, bookModel.volumeInfo.previewLink!),
                text: getText(bookModel),
                backgroundColor: const Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      );
}

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) return 'Not Available';
  return 'Preview';
}
