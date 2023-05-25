import 'package:flutter/material.dart';
import 'package:mental_app/util/appcolors.dart';
import 'package:mental_app/widget/exercises_list.dart';
import 'package:mental_app/widget/bottom_navigation_bar.dart';
import 'package:mental_app/widget/emotion_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar:  const AppBottomNavigationBar(),
      backgroundColor: AppColors.primaryBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  // Hi text and notification
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hi, Jared!",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "23 Jan, 2021",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.textBlue,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.lightBlue,
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // Search bar
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppColors.lightBlue,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // How do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 35,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Wrap(
                    spacing: 15,
                    children: const [
                      EmotionCard(
                        emoji: '😔',
                        emojiText: 'Badly',
                      ),
                      EmotionCard(
                        emoji: '😊',
                        emojiText: 'Fine',
                      ),
                      EmotionCard(
                        emoji: '😁',
                        emojiText: 'Well',
                      ),
                      EmotionCard(
                        emoji: '😃',
                        emojiText: 'Excellent',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.44,
              minChildSize: 0.44,
              maxChildSize: 0.72,
              builder: (context, controller) {
                return ExercisesList(
                  controller: controller,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
