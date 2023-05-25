import 'package:flutter/material.dart';
import 'package:mental_app/util/appcolors.dart';

List exercisesList = [
  [Icons.favorite, "Speking skills", "16 Exercises", const Color(0xffF78556)],
  [Icons.person, "Reading speed", "8 Exercises", AppColors.primaryBlue],
  [Icons.menu_book, "Math skills", "25 Exercises", const Color(0xffFA5A7D)],
  [Icons.computer, "Code exercises", "32 Exercises", const Color(0xff9A66F0)],
  [Icons.favorite, "Speking skills", "16 Exercises", const Color(0xffF78556)],
  [Icons.person, "Reading speed", "8 Exercises", AppColors.primaryBlue],
  [Icons.menu_book, "Math skills", "25 Exercises", const Color(0xffFA5A7D)],
  [Icons.computer, "Code exercises", "32 Exercises", const Color(0xff9A66F0)],
];

class ExercisesList extends StatelessWidget {
  final ScrollController controller;
  const ExercisesList({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.2,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 35, right: 35),
          child: Column(
            children: [
              // Head
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Exercises",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.textDarkBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: AppColors.textDarkBlue,
                    size: 35,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              // list
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        spreadRadius: -1,
                        blurRadius: 50,
                        color: Color.fromRGBO(38, 126, 189, 0.2),
                      )
                    ],
                  ),
                  child: ListView.separated(
                    controller: controller,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 20),
                    itemCount: exercisesList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(17),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: exercisesList[index][3],
                                  ),
                                  child: Icon(
                                    exercisesList[index][0],
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      exercisesList[index][1],
                                      style: const TextStyle(
                                        color: AppColors.textDarkBlue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      exercisesList[index][2],
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.more_horiz,
                              color: AppColors.textDarkBlue,
                              size: 35,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
