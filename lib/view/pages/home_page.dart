import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ufs_mashine_test/core/constants/home_page_constants.dart';
import 'package:ufs_mashine_test/view/widgets/bottom_navigation_bar_widget.dart';
import 'package:ufs_mashine_test/view/widgets/gap_widget.dart';
import 'package:ufs_mashine_test/view/widgets/mock_test_widget.dart';
import 'package:ufs_mashine_test/view/widgets/stack_condainer_widget.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenwidth = MediaQuery.sizeOf(context).width;
    final constants = ref.watch(homePageConstantsProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const StackCondainerWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GapWidget.h24(),
                  Text(
                    constants.txtSubHeading,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(225, 0, 0, 0)),
                  ),
                  const GapWidget.h8(),
                  Container(
                    width: screenwidth,
                    height: 90,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          height: 78,
                          width: 93,
                          child: Image.asset(
                            "assets/images/you_tube_video_play_img.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                "OET Beginner special class\nand Preparation Tips",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 14),
                              ),
                            ),
                            Text(
                              "20:45 / 35:12",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(103, 0, 0, 0),
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  const GapWidget.h24(),
                  Container(
                    width: screenwidth,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 27, 132, 218),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(103, 0, 0, 0),
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(16)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          constants.txtbutton,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                  ),
                  const GapWidget.h24(),
                  Container(
                    width: screenwidth,
                    height: 120,
                    child: Row(
                      children: [
                        const Text(" "),
                        Image.asset(
                          "assets/images/find_a_mentor_img.png",
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(103, 0, 0, 0),
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  const GapWidget.h24(),
                  Text(
                    constants.txtmockTest,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(225, 0, 0, 0)),
                  ),
                  Row(
                    children: [
                      MockTestWidgets(
                        iconns: SizedBox(
                            height: 10,
                            width: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/ic_book.png",
                                fit: BoxFit.cover,
                              ),
                            )),
                        name: constants.txtreading,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      MockTestWidgets(
                        iconns: SizedBox(
                            height: 10,
                            width: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/Headphones.png",
                                fit: BoxFit.cover,
                              ),
                            )),
                        name: constants.txtlistening,
                      ),
                    ],
                  ),
                  const GapWidget.h16(),
                  Row(
                    children: [
                      MockTestWidgets(
                        iconns: SizedBox(
                            height: 10,
                            width: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/ic_pen.png",
                                fit: BoxFit.cover,
                              ),
                            )),
                        name: constants.txtwriting,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      MockTestWidgets(
                        iconns: SizedBox(
                            height: 10,
                            width: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/ic_user_sound.png",
                                fit: BoxFit.cover,
                              ),
                            )),
                        name: constants.txtspeaking,
                      ),
                    ],
                  ),
                  const GapWidget.h24(),
                  Text(
                    constants.txtpopularCourse,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(225, 0, 0, 0)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      /////
      /////Bottom NAvigation bar
      ///
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
