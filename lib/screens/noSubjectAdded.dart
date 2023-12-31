import 'package:flutter/material.dart';
import 'package:learner_education_app/screens/children.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NoSubjectAdded_Screen extends StatelessWidget {
  final listOfCategories = [
    {
      'icon': 'assets/images/image 8.png',
      'text': 'Accounting ',
      'noCourses': '20 Courses',
    },
    {
      'icon': 'assets/images/69001270-removebg-preview (1) 1.png',
      'text': 'Bioloogy',
      'noCourses': '15 Courses',
    },
    {
      'icon': 'assets/images/image 7.png',
      'text': 'Photography ',
      'noCourses': '25 Courses',
    },
    {
      'icon':
          'assets/images/124-1247062_digital-marketing-illustration-png-transparent-png-removebg-preview 1.png',
      'text': 'Marketing ',
      'noCourses': '18 Courses',
    },
    {
      'icon': 'assets/images/UH14stzbXl4OZHrz-removebg-preview 1.png',
      'text': 'Security',
      'noCourses': '18 Courses',
    },
    {
      'icon':
          'assets/images/124619001-microscope-test-tubes-and-atom-science-vector-illustration-removebg-preview 1.png',
      'text': 'Chemistry',
      'noCourses': '20 Courses',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // rectangle blue
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Image.asset('assets/images/Rectangle 19.png')),
                  // circle image
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 11, horizontal: 10),
                    child: Image.asset(
                      'assets/images/Circle.png',
                      height: 210,
                    ),
                  ),
                  // hello text
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 45, horizontal: 33),
                    child: Text(
                      'Hello,',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      // notification
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 320),
                        child: CircleAvatar(
                          backgroundColor: Colors.indigo[100],
                          child: Image.asset(
                            'assets/images/Group.png',
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ),

                      // red circle of notification
                      Container(
                          margin: EdgeInsets.only(top: 51, left: 340),
                          child: Image.asset(
                            'assets/images/Ellipse 190.png',
                          )),
                    ],
                  ),

                  // good morning text
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 82, horizontal: 33),
                    child: Text(
                      'good Morning',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 145, left: 40, right: 30),
                    height: 45,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.search,
                            color: Color(0xffB7B7B7),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 13),
                          child: Text(
                            'search',
                            style: TextStyle(
                              color: Color(0xffB7B7B7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 150),
                          child: Text(
                            'All',
                            style: TextStyle(
                              color: Color(0xffB7B7B7),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          // margin: EdgeInsets.only(right: 31),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xffB7B7B7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Explore categories text
                    Text(
                      'Explore categories',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Children(),
                          ),
                        );
                      },
                      child: // See all text
                          Text(
                        'See all',
                        style: TextStyle(
                          // fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4D8AF0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  children: [
                    //Column ==> image ==> text1 ==> text2
                    Category(
                      urlImage: 'assets/images/image 8.png',
                      title: 'Accounting ',
                      noCourses: '20 Courses',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Category(
                      urlImage:
                          'assets/images/69001270-removebg-preview (1) 1.png',
                      title: 'Bioloogy',
                      noCourses: '15 Courses',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //2 row
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  children: [
                    //Column ==> image ==> text1 ==> text2
                    Category(
                      urlImage: 'assets/images/image 7.png',
                      title: 'Photography ',
                      noCourses: '25 Courses',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Category(
                      urlImage:
                          'assets/images/124-1247062_digital-marketing-illustration-png-transparent-png-removebg-preview 1.png',
                      title: 'Marketing ',
                      noCourses: '18 Courses',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //3 row
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  children: [
                    //Column ==> image ==> text1 ==> text2
                    Category(
                      urlImage:
                          'assets/images/UH14stzbXl4OZHrz-removebg-preview 1.png',
                      title: 'Security ',
                      noCourses: '18 Courses',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Category(
                      urlImage:
                          'assets/images/124619001-microscope-test-tubes-and-atom-science-vector-illustration-removebg-preview 1.png',
                      title: 'Chemistry',
                      noCourses: '20 Courses',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SalomanBottomBar(),
    );
  }
}

class SalomanBottomBar extends StatelessWidget {
  const SalomanBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      items: [
        /// Home
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: Colors.blue,
        ),

        /// Message
        SalomonBottomBarItem(
          icon: Icon(Icons.messenger_outline_rounded),
          title: Text("Message"),
          selectedColor: Colors.blue,
        ),

        /// notification
        SalomonBottomBarItem(
          icon: Icon(Icons.notifications_none_outlined),
          title: Text("notification"),
          selectedColor: Colors.blue,
        ),

        /// Profile
        SalomonBottomBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile"),
          selectedColor: Colors.blue,
        ),
      ],
    );
  }
}

class Category extends StatelessWidget {
  final String urlImage;
  final String title;
  final String noCourses;

  const Category({
    Key? key,
    required this.urlImage,
    required this.title,
    required this.noCourses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFffffff),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              5.0, // Move to right 5  horizontally
              5.0, // Move to bottom 5 Vertically
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      height: 210,
      width: 170,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              urlImage,
              height: 150,
              width: 150,
            ),
            margin: EdgeInsets.only(top: 10, left: 18),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 15),
            child: Text(
              noCourses,
              style: TextStyle(
                color: Color(0xff727272),
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  // final int i;
  const CategoryItemWidget({
    super.key,
    // required this.i,
    required this.data,
  });
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Image.asset(
            data['icon'],
            height: 70,
            width: 70,
          ),
        ),
        // SizedBox(
        //   child:
        Text(
          data['text'],
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        // ),

        Text(
          data['noCourses'],
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: Color(0xff727272),
          ),
        ),
      ],
    );
  }
}
