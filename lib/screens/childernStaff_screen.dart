
import 'package:flutter/material.dart';
import 'package:learner_education_app/screens/notNotification.dart';

class ChildrenStaff_Screen extends StatelessWidget {
  const ChildrenStaff_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// top bar
            Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_outlined,),
                  Icon(Icons.search,),
                ],
              ),
            ),
            LineGray(),

            /// first row
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/user7.png',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lucas Wilson',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text('Thomas Jefferson High School ',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6F6F79),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                  CircleAvatar(child:
                  Image.asset('assets/images/repeat.png',
                  height: 20,
                    width: 20,
                  )
                  ),
                ],
              ),
            ),
            LineGray(),

            /// Staff available for Lucas Wilson
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NotNotificationFounded(),
                    ),
                  );
                },
                child:Text('Staff available for Lucas Wilson',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff4E74F9),
                  ),
                ),
              ),

            ),
            LineGray(),

            /// staff list
            person_In_staffList(urlImage: 'assets/images/user1.png',
                                 name: 'Henry Itondo',
                                 role: 'Math Teacher',
            ),
            LineGray(),

            /// 2
            person_In_staffList(urlImage: 'assets/images/user2.png',
              name: 'Courtney Henry',
              role: 'Supervisor',
            ),
            LineGray(),

            ///3
            person_In_staffList(urlImage: 'assets/images/user3.png',
              name: 'Darika Samak',
              role: 'Admin',
            ),
            LineGray(),

            ///4
            person_In_staffList(urlImage: 'assets/images/user4.png',
              name: 'Em Assinder',
              role: 'Class Teacher',
            ),
            LineGray(),

            ///5
            person_In_staffList(urlImage: 'assets/images/user5.png',
              name: 'Darika Samak',
              role: 'Admin',
            ),
            LineGray(),

            ///6
            person_In_staffList(urlImage: 'assets/images/user6.png',
              name: 'Em Assinder',
              role: 'Class Teacher',
            ),
            LineGray(),







          ],
        ),
      ),
    );
  }

  Container LineGray() {
    return Container(
            color: Color(0xffE9E9F1),
            height: 2,
            width: 390,
      margin: EdgeInsets.symmetric(vertical: 8),
          );
  }
}

class person_In_staffList extends StatelessWidget {
  final String urlImage;
  final String name;
  final String role;

  const person_In_staffList({
    Key? key, required this.urlImage, required this.name, required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(urlImage,
                height: 50,
                width: 50,
              ),

              SizedBox(width: 10,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Text(role,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6F6F79),
                    ),
                  )
                ],
              ),
            ],
          ),

           Image.asset('assets/images/phone.png',
            height: 25,
             width: 25,
           )

        ],
      ),
    );
  }
}
