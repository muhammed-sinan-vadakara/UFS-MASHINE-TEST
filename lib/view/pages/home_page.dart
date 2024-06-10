import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:ufs_mashine_test/view/widgets/gap_widget.dart';
import 'package:ufs_mashine_test/view/widgets/mock_test_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('EEEE, MMMM d, y').format(now);
    final screenwidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: screenwidth,
              child: Stack(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/background_img.png",
                      fit: BoxFit.contain,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                      bottom: 110,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 12, top: 4, left: 24),
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(
                                "assets/images/user_profile_img.jpeg",
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hi , Ajay",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "$formattedDate",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(122, 158, 158, 158),
                                borderRadius: BorderRadius.circular(24)),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.search),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.notifications_active),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      child: Image.asset(
                        "assets/images/books_background_img.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(172, 34, 62, 241)),
                      )),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        child: Image.asset(
                          "assets/images/student_cartoon_img.png",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GapWidget.h24(),
                  Text(
                    "Recently played",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(225, 0, 0, 0)),
                  ),
                  GapWidget.h8(),
                  Container(
                    width: screenwidth,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(103, 0, 0, 0),
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  GapWidget.h24(),
                  Container(
                    width: screenwidth,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 27, 132, 218),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(103, 0, 0, 0),
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(16)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Explore Course ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                  ),
                  GapWidget.h24(),
                  Container(
                    width: screenwidth,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(103, 0, 0, 0),
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  GapWidget.h24(),
                  Text(
                    "Mock Tests",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(225, 0, 0, 0)),
                  ),
                  Row(
                    children: [
                      MockTestWidgets(
                        icons: Icon(Icons.abc),
                        name: "gfhjk",
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      MockTestWidgets(
                        icons: Icon(Icons.abc),
                        name: "gfhjk",
                      )
                    ],
                  ),
                  GapWidget.h16(),
                  Row(
                    children: [
                      MockTestWidgets(
                        icons: Icon(Icons.abc),
                        name: "gfhjk",
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      MockTestWidgets(
                        icons: Icon(Icons.abc),
                        name: "gfhjk",
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
