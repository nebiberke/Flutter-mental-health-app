import 'package:flutter/material.dart';
import 'package:mental_app/util/appcolors.dart';

class EmotionCard extends StatelessWidget {
  final String emoji;
  final String emojiText;
  const EmotionCard({super.key, required this.emoji, required this.emojiText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: AppColors.lightBlue,
          ),
          child: Text(
            emoji,
            style: const TextStyle(
              fontSize: 27,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          emojiText,
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}