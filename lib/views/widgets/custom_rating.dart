import 'package:flutter/material.dart';
import '../shared/gen/colors.gen.dart';
import 'app_text.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({
    Key? key,
    required this.ratingScore,
    this.totalReviewer = 0,
    this.showReviews = false,
  }) : super(key: key);

  final double ratingScore;
  final int totalReviewer;
  final bool showReviews;

  @override
  Widget build(BuildContext context) {
    const size = 15.0;
    return Row(
      children: [
        for (int i = 1; i <= 5; i++)
          Container(
            // decoration: BoxDecoration(
            //   color: i <= ratingScore ? ColorName.yellow : Colors.white,
            //   shape: BoxShape.circle,
            //   border: Border.all(color: ColorName.yellow),
            // ),
            child: Icon(
              Icons.star,
              color: i <= ratingScore ? ColorName.yellow : Colors.white,
              weight: size,
              size: size + 12,
            ),
          ),
        const SizedBox(width: 12),
        AppText.medium(
          '${ratingScore > 5 ? 5.0 : ratingScore}',
          fontWeight: FontWeight.bold,
        ),
        if (showReviews) ...[
          const SizedBox(width: 12),
          AppText.medium(
            '($totalReviewer ${totalReviewer > 1 ? 'reviews' : 'review'})',
            textDecoration: TextDecoration.underline,
          ),
        ],
      ],
    );
  }
}
