import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StackCondainerWidget extends StatefulWidget {
  const StackCondainerWidget({super.key});

  @override
  State<StackCondainerWidget> createState() => _StackCondainerWidgetState();
}

DateTime now = DateTime.now();

class _StackCondainerWidgetState extends State<StackCondainerWidget> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.sizeOf(context).width;
    String formattedDate = DateFormat('EEEE, MMMM d, y').format(now);

    return Container(
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
                    padding: const EdgeInsets.only(right: 12, top: 4, left: 24),
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
                decoration:
                    BoxDecoration(color: Color.fromARGB(172, 34, 62, 241)),
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
    );
  }
}
